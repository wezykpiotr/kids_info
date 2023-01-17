import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';

import '../home/home_page.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      // If the user is already signed-in, use it as initial data
      initialData: FirebaseAuth.instance.currentUser,
      builder: (context, snapshot) {
        // User is not signed in
        if (!snapshot.hasData) {
          return SignInScreen(
            headerBuilder: (context, constraints, shrinkOffset) {
              return PreferredSize(
                preferredSize: const Size.fromHeight(5),
                child: AppBar(
                  title: const Text("Test"),
                  backgroundColor: Colors.amber,
                  flexibleSpace: Container(
                    height: shrinkOffset,
                  ),
                ),

                // actions: const [
                //   Icon(Icons.dark_mode),
                // ],
              );
            },
            providerConfigs: const [
              EmailProviderConfiguration(),
            ],
          );
        }

        // Render your application if authenticated
        return HomePage(
          currentUser: snapshot.data!,
        );
      },
    );
  }
}
