import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  const MyListTile(
      {super.key,
      required this.title,
      required this.iconPath,
      required this.onTap});
  final String title;
  final String iconPath;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListTile(
        leading: Image.asset(
          iconPath,
          color: Colors.white,
        ),
        onTap: onTap,
        title: Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
