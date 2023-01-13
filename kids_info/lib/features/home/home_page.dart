import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_ui/firestore.dart';
import 'package:kids_info/features/auth/user_profile.dart';

class HomePage extends StatelessWidget {
  HomePage({
    Key? key,
    required this.currentUser,
  }) : super(key: key);

  final User currentUser;

  final userQuery =
      FirebaseFirestore.instance.collection('users').orderBy('displayName');

  @override
  Widget build(BuildContext context) {
    // debugPrint(AppLocalizations.of(context)!.helloWorld);
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
      body: FirestoreListView<Map<String, dynamic>>(
          query: userQuery,
          itemBuilder: (context, snapshot) {
            Map<String, dynamic> user = snapshot.data();
            return Text('User name is ${user['displayName']}');
          }),
    );
  }
}
