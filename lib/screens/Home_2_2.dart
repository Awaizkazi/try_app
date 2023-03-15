// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class home_2_2 extends StatelessWidget {
  const home_2_2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Image.asset('assets/images/home/mey_logo.png'),
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
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              CustomContainer(
                c_width: 200.0,
                c_height: 200.0,
                container_color: Colors.blue,
                img_path: 'assets/images/home/banner1.png',
              ),
              CustomContainer(
                c_width: 200.0,
                c_height: 200.0,
                container_color: Colors.blue,
                img_path: 'assets/images/home/banner4.png',
              ),
              CustomContainer(
                c_width: 200.0,
                c_height: 200.0,
                container_color: Colors.blue,
                img_path: 'assets/images/home/banner2.png',
              ),
            ],
          );
        },
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
      width: c_width,
      height: c_height,
      child: Image.asset(img_path!),
      color: container_color,
    );
  }
}
