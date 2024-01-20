import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:kids_info/features/edit_personal_info_data/domain/edit_personal_info_model.dart';

@injectable
class EditPersonalInfoRepository {
  Stream<List<EditPersonalInfoModel>> getItemsStream() {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    return FirebaseFirestore.instance
        .collection('users')
        .doc(userID)
        .collection('personal_info')
        .snapshots()
        .map((querySnapshot) {
      return querySnapshot.docs.map(
        (doc) {
          return EditPersonalInfoModel(
            id: doc.id,
            name: doc['name'],
            birthday: (doc['birthday'] as Timestamp).toDate(),
            weight: doc['weight'].toString(),
            height: doc['height'],
          );
        },
      ).toList();
    });
  }

  Future<void> delete({required String id}) {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    return FirebaseFirestore.instance
        .collection('users')
        .doc(userID)
        .collection('personal_info')
        .doc(id)
        .delete();
  }

  Future<EditPersonalInfoModel> get({required String id}) async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    final doc = await FirebaseFirestore.instance
        .collection('users')
        .doc(userID)
        .collection('personal_info')
        .doc(id)
        .get();
    return EditPersonalInfoModel(
      id: doc.id,
      name: doc['name'],
      birthday: (doc['birthday'] as Timestamp).toDate(),
      weight: doc['weight'],
      height: doc['height'],
    );
  }

  Future<String> add(
    String name,
    DateTime birthday,
    String weight,
    num height,
    String sex,
    bool twin,
    num headSize,
  ) async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    DocumentReference docRef = await FirebaseFirestore.instance
        .collection('users')
        .doc(userID)
        .collection('personal_info')
        .add(
      {
        'name': name,
        'birthday': birthday,
        'weight': weight,
        'height': height,
        'headSize': headSize,
        'sex': sex,
        'twin': twin,
      },
    );
    return docRef.id;
  }

  Future<void> updateBabyInfo(
      String id, String name, DateTime birthday, num weight, num height) async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    await FirebaseFirestore.instance
        .collection('users')
        .doc(userID)
        .collection('personal_info')
        .doc(id)
        .update({
      'name': name,
      'birthday': birthday,
      'weight': weight,
      'height': height,
    });
  }
}
