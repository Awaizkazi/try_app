import 'package:flutter/material.dart';

class HomeScreen2 extends StatefulWidget {
  const HomeScreen2({super.key});

  @override
  State<HomeScreen2> createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Image.asset('assets/images/mey_logo.png'),
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
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 60),
            child: Column(
              children: [
                CustomContainerForImges(
                  pathImage: 'assets/images/banner1.png',
                ),
                CustomContainerForImges(
                  pathImage: 'assets/images/scroll_home_1.png',
                ),
                CustomContainerForImges(
                  pathImage: 'assets/images/banner2.png',
                ),
                CustomContainerForImges(
                  pathImage: 'assets/images/banner3.png',
                ),
                CustomContainerForImges(
                  pathImage: 'assets/images/banner4.png',
                ),
                CustomContainerForImges(
                  pathImage: 'assets/images/banner5.png',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomContainerForImges extends StatelessWidget {
  final String? pathImage;

  const CustomContainerForImges({
    super.key,
    this.pathImage,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          child: Image.asset(
            pathImage!,
            fit: BoxFit.cover,
          ),
          width: MediaQuery.of(context).size.width,
        ),
      ],
    );
  }
}

class CarouselSlider extends StatefulWidget {
  const CarouselSlider({super.key});

  @override
  State<CarouselSlider> createState() => _CarouselSliderState();
}

class _CarouselSliderState extends State<CarouselSlider> {
  final urlImages = [
    'https://rb.gy/bho5m2',
    'https://rb.gy/bho5m2',
    'https://rb.gy/bho5m2',
    'https://rb.gy/bho5m2',
    'https://rb.gy/bho5m2'
  ];
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
