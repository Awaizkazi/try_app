import 'package:flutter/material.dart';
import 'package:try_app/navigate_pages.dart';
import 'package:try_app/screens/account_screen.dart';
import 'package:try_app/screens/favorite_screen.dart';
import 'package:try_app/screens/home2.dart';
import 'package:try_app/screens/home3.dart';
import 'package:try_app/screens/search_screen.dart';
import 'package:try_app/screens/sign_up.dart';
import 'package:try_app/screens/on_boarding_1.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

import 'ex1.dart';
import 'profile_screen.dart';
import 'screens/login.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Profile_Screen(),
      initialRoute: '/',
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
    );
  }
}
