import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen3 extends StatefulWidget {
  const HomeScreen3({super.key});

  @override
  State<HomeScreen3> createState() => _HomeScreen3State();
}

class _HomeScreen3State extends State<HomeScreen3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CustomContainerForImges(
            pathImage: 'assets/images/home/banner6.png',
          ),
          CustomContainerForImges(
            pathImage: 'assets/images/home/banner7.png',
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomCircleAvatar(
                  image:
                      'https://images.pexels.com/photos/1382734/pexels-photo-1382734.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                ),
                CustomCircleAvatar(
                  image:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOxVz2U6ihsCFFFniOjh2UaBXxg3W_dkiOpQ&usqp=CAU',
                ),
                CustomCircleAvatar(
                  image:
                      'https://media.istockphoto.com/id/998518584/photo/preschooler.jpg?b=1&s=170667a&w=0&k=20&c=FYXdsPvoiRIlj2EdnkZwWDDqf9c4g7xyUW6xIcwb-M0=',
                ),
                CustomCircleAvatar(
                  image:
                      'https://foyr.com/learn/wp-content/uploads/2022/01/importance-of-accessories-in-interior-design.jpg',
                ),
              ],
            ),
          ),
        ],
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

class CustomCircleAvatar extends StatelessWidget {
  final String? image;
  CustomCircleAvatar({super.key, this.image});

  @override
  Widget build(BuildContext context) {
    var index = 0;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(15),
            child: CircleAvatar(
              radius: 38,
              backgroundImage: NetworkImage(image!),
            ),
          ),
          SizedBox(height: 10),
          Container(
            width: 80,
            child:
                Text('Label for Asatar #$index', textAlign: TextAlign.center),
          ),
        ],
      ),
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
