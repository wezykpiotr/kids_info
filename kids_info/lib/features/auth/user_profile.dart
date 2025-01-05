import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../theme/cubit/theme_cubit.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      body: ProfileScreen(
        
        actions: [
          SignedOutAction((context) {
            Navigator.of(context).pop();
          })
        ],
        avatarSize: 48,
      ),
    );
  }
}

class MyAppBar extends StatefulWidget implements PreferredSizeWidget {
  const MyAppBar({
    Key? key,
  }) : super(key: key);

  @override
  State<MyAppBar> createState() => _MyAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(56);
}

class _MyAppBarState extends State<MyAppBar> {
  bool isDarkMode = true;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ThemeCubit>();
    return AppBar(
      actions: [
        Padding(
          padding: const EdgeInsets.only(
            right: 5,
          ),
          child: IconButton(
            onPressed: () {
              setState(() {
                isDarkMode = !isDarkMode;
                cubit.setTheme();
              });
            },
            icon: Icon(
              isDarkMode ? Icons.light_mode : Icons.dark_mode,
            ),
          ),
        )
      ],
    );
  }
}

// class DarkModeSwitch extends StatefulWidget {
//   const DarkModeSwitch({
//     Key? key,
//   }) : super(key: key);

//   @override
//   State<DarkModeSwitch> createState() => _DarkModeSwitchState();
// }

// class _DarkModeSwitchState extends State<DarkModeSwitch> {
//   bool isDarkMode = true;

//   @override
//   Widget build(BuildContext context) {
//     final cubit = context.read<ThemeCubit>();
//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           isDarkMode = !isDarkMode;
//           cubit.setTheme();
//         });
//       },
//       child: Icon(
//         isDarkMode ? Icons.light_mode : Icons.dark_mode,
//         color: Colors.blue,
//         size: 50,
//       ),
//     );
//   }
// }
