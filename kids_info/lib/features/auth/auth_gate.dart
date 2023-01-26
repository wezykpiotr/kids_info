import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterfire_ui/auth.dart';
import 'package:kids_info/features/theme/cubit/theme_cubit.dart';
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
              return Padding(
                padding: const EdgeInsets.all(10).copyWith(left: 350),
                child: const DarkModeSwitch(),
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

class DarkModeSwitch extends StatefulWidget {
  const DarkModeSwitch({
    Key? key,
  }) : super(key: key);

  @override
  State<DarkModeSwitch> createState() => _DarkModeSwitchState();
}

class _DarkModeSwitchState extends State<DarkModeSwitch> {
  bool isDarkMode = true;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ThemeCubit>();
    return GestureDetector(
      onTap: () {
        setState(() {
          isDarkMode = !isDarkMode;
          cubit.setTheme();
        });
      },
      child: Icon(
        isDarkMode ? Icons.light_mode : Icons.dark_mode,
        color: Colors.blue,
        size: 50,
      ),
    );
  }
}
