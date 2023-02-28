import 'package:flutter/material.dart';

class HomeScreen2 extends StatefulWidget {
  const HomeScreen2({super.key});

  @override
  State<HomeScreen2> createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.favorite_outline,
              color: Colors.black,
            ),
            tooltip: 'Your favorites',
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.shopping_bag_outlined,
              color: Colors.black,
            ),
            tooltip: 'Open shopping cart',
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.sort_outlined,
              color: Colors.black,
            ),
            tooltip: 'Search by Filter',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
