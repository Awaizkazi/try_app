// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'home2.dart';

class home_3_3 extends StatelessWidget {
  const home_3_3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Image.asset('assets/images/home2/tryplore_logo.png'),
        actions: [
          SizedBox(
            height: 70,
            width: 70,
            child: Image.asset(
              'assets/images/home/trial_room_logo.png',
            ),
          ),
          IconButton(
            icon: const Icon(
              Icons.location_on,
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
      body: ListView(
        children: [
          CustomContainer(
            c_width: double.infinity,
            container_color: Colors.blue,
            img_path: 'assets/images/home3/free-shipping.png',
          ),
          SizedBox(height: 7),
        ],
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  final double? c_width, c_height;
  final String? img_path;
  final Color? container_color;
  const CustomContainer({
    Key? key,
    this.c_height,
    this.img_path,
    this.c_width,
    this.container_color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: c_height,
      child: Image.asset(img_path!, fit: BoxFit.fitWidth),
      color: container_color,
    );
  }
}
