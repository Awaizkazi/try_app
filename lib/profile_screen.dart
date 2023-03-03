import 'package:flutter/material.dart';

class Profile_Screen extends StatelessWidget {
  const Profile_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            color: Color(0xff535353),
          ),
        ],
      ),
    );
  }
}
