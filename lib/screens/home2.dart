import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

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
                // CustomContainerForImges(
                //   pathImage: 'assets/images/scroll_home_1.png',
                // ),
                CustomCarouselSlider(),
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

class CustomCarouselSlider extends StatefulWidget {
  CustomCarouselSlider({super.key});

  @override
  State<CustomCarouselSlider> createState() => _CustomCarouselSliderState();
}

class _CustomCarouselSliderState extends State<CustomCarouselSlider> {
  final urlImages = [
    'https://rb.gy/bho5m2',
    'https://rb.gy/bho5m2',
    'https://rb.gy/bho5m2',
    'https://rb.gy/bho5m2',
    'https://rb.gy/bho5m2'
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        child: CarouselSlider(
      options: CarouselOptions(
        height: 200.0,
        autoPlay: true,
        enableInfiniteScroll: true,
        autoPlayInterval: Duration(seconds: 1),
        autoPlayAnimationDuration: Duration(milliseconds: 700),
        autoPlayCurve: Curves.fastOutSlowIn,
      ),
      items: [1, 2, 3, 4, 5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(color: Colors.amber),
              child: Image.network(
                'https://media.istockphoto.com/id/1307189136/photo/gateway-of-india-mumbai-maharashtra-monument-landmark-famous-place-magnificent-view-without.jpg?b=1&s=170667a&w=0&k=20&c=BLP7ZQkbok5etYvEF3obeqaG-5Sv06_kaqPfS8z9CS4=',
                fit: BoxFit.cover,
              ),
            );
          },
        );
      }).toList(),
    ));
  }
}
