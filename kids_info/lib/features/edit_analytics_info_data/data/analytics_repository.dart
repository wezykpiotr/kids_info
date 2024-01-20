import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:kids_info/features/edit_analytics_info_data/domain/analytics_model.dart';

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
            doc.id,
            doc['age'],
            doc['height'],
            doc['weight'],
            doc['headSize'],
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
      doc.id,
      doc['age'],
      doc['height'],
      doc['weight'],
      doc['headSize'],
    );
  }

  Future<void> addAnalytics(
    String docId, {
    required num age,
    required num height,
    required String weight,
    required num headSize,
  }) async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    await FirebaseFirestore.instance
        .collection('users')
        .doc(userID)
        .collection('analytics')
        .doc(docId)
        .set(
      {
        'age': age,
        'height': height,
        'weight': weight,
        'headSize': headSize,
      },
    );
  }
}
