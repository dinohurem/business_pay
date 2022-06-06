// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:business_pay/screens/auth/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InitiateScreen(),
    );
  }
}

class InitiateScreen extends StatelessWidget {
  const InitiateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Login();
  }
}
