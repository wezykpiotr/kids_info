import 'package:flutter/material.dart';
import 'package:kids_info/features/LoginPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kids Info',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(),
    );
  }
}

