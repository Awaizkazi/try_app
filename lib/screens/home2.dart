import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'home3.dart';

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
                  pathImage: 'assets/images/home/banner1.png',
                ),
                CustomCarouselSlider(),
                // SmoothPageIndicator(controller: _controller, count: index),
                CustomContainerForImges(
                  pathImage: 'assets/images/home/banner2.png',
                ),
                CustomContainerForImges(
                  pathImage: 'assets/images/home/banner3.png',
                ),
                CustomContainerForImges(
                  pathImage: 'assets/images/home/banner4.png',
                ),
                CustomContainerForImges(
                  pathImage: 'assets/images/home/banner5.png',
                ),
                HomeScreen3(),
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

class CustomCarouselSlider extends StatefulWidget {
  CustomCarouselSlider({super.key});

  @override
  State<CustomCarouselSlider> createState() => _CustomCarouselSliderState();
}

class _CustomCarouselSliderState extends State<CustomCarouselSlider> {
  int activeIndex = 0;
  final urlImages = [
    'https://thumbs.dreamstime.com/b/gateway-india-mumbai-gateway-india-arch-monument-built-th-century-mumbai-india-monument-was-138091856.jpg',
    'https://media.istockphoto.com/id/1146517111/photo/taj-mahal-mausoleum-in-agra.jpg?s=612x612&w=0&k=20&c=vcIjhwUrNyjoKbGbAQ5sOcEzDUgOfCsm9ySmJ8gNeRk=',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              height: 200.0,
              autoPlay: true,
              enableInfiniteScroll: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              // viewportFraction: 1,
              enlargeCenterPage: true,
              enlargeStrategy: CenterPageEnlargeStrategy.height,
              onPageChanged: (index, reason) {
                setState(() {
                  activeIndex = index;
                });
              },
            ),
            items: [1, 2, 3, 4, 5].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(color: Colors.amber),
                    child: Image.network(
                      urlImages.first,
                      fit: BoxFit.cover,
                    ),
                  );
                },
              );
            }).toList(),
          ),
          AnimatedSmoothIndicator(
            activeIndex: activeIndex,
            count: urlImages.length,
          ),
        ],
      ),
    );
  }
}
