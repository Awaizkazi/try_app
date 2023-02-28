import 'package:flutter/material.dart';
import 'package:try_app/screens/home2.dart';
import 'package:try_app/screens/home3.dart';
import 'package:try_app/screens/sign_up.dart';
import 'package:try_app/screens/welcome.dart';

import 'screens/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen3(),
      initialRoute: '/',
    );
  }
}
