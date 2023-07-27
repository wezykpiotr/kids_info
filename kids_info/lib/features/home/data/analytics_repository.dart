import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:kids_info/features/home/domain/analytics_model.dart';


@injectable
class AnalyticsRepository {
  Stream<List<AnalyticsModel>> getItemsStream() {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    return FirebaseFirestore.instance
        .collection('users')
        .doc(userID)
        .collection('analytics')
        .snapshots()
        .map((querySnapshot) {
      return querySnapshot.docs.map(
        (doc) {
          return AnalyticsModel(
            id: doc.id,
            age: doc['age'],
            height: doc['height'],
            weight: doc['weight'],
            headSize: doc['head-size'],
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
        .collection('analytics')
        .doc(id)
        .delete();
  }

  Future<AnalyticsModel> get({required String id}) async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    final doc = await FirebaseFirestore.instance
        .collection('users')
        .doc(userID)
        .collection('analytics')
        .doc(id)
        .get();
    return AnalyticsModel(
      id: doc.id,
      age: doc['age'],
      height: doc['height'],
      weight: doc['weight'],
      headSize: doc['head-size'],
    );
  }

  Future<void> add(
    int age,
    int height,
    double weight,
    double headSize,
  ) async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    await FirebaseFirestore.instance
        .collection('users')
        .doc(userID)
        .collection('analytics')
        .add(
      {
        'age': age,
        'height': height,
        'weight': weight,
        'headSize': headSize,
      },
    );
  }
}
