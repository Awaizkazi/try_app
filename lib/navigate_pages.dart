import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:try_app/screens/account_screen.dart';
import 'package:try_app/screens/favorite_screen.dart';
import 'package:try_app/screens/search_screen.dart';
import 'package:try_app/screens/shopping_screen.dart';

import 'screens/home2.dart';

class NavigateScreen extends StatefulWidget {
  const NavigateScreen({super.key});

  @override
  State<NavigateScreen> createState() => _NavigateScreenState();
}

class _NavigateScreenState extends State<NavigateScreen> {
  int currentIndex = 0;
  List Pages = [
    //TODO Arrange them Porperly in the indexed manner INDEX starts from 0
    HomeScreen2(),
    SearchScreen(),
    FavoriteScreen(),
    CartScreen(),
    AccountScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Pages[currentIndex],
      bottomNavigationBar: BottomNavyBar(
        // Current Index by Dafault here we set the home page
        selectedIndex: currentIndex,
        animationDuration: Duration(microseconds: 300),
        onItemSelected: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        itemCornerRadius: 10,
        // Items are here
        items: [
          BottomNavyBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            activeColor: Colors.grey.shade900,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.search_outlined),
            title: Text('Search'),
            activeColor: Colors.grey.shade900,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.favorite_outline),
            title: Text('Dashboard'),
            activeColor: Colors.grey.shade900,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            title: Text('Shopping'),
            activeColor: Colors.grey.shade900,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            title: Text('Account'),
            activeColor: Colors.grey.shade900,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
