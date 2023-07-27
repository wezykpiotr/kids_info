import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_ui/firestore.dart';
import 'package:kids_info/features/auth/user_profile.dart';
import 'package:kids_info/features/chart/domain/model/chart_model.dart';
import 'package:kids_info/features/chart/presentation/chart_page.dart';

class HomePage extends StatelessWidget {
  HomePage({
    Key? key,
    required this.currentUser,
  }) : super(key: key);

  final User currentUser;
  late final ChartModel model = ChartModel(0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 10);
  final userQuery = FirebaseFirestore.instance.collection('users');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('users collection'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const UserProfileScreen()));
            },
            icon: const Icon(Icons.person),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => ChartPage(chartModel: model),
            ),
          );
        },
      ),
      body: FirestoreListView<Map<String, dynamic>>(
        query: userQuery,
        itemBuilder: (context, snapshot) {
          Map<String, dynamic> user = snapshot.data();
          return Text('User\'s email is ${user['email']}');
        },
      ),
    );
  }
}