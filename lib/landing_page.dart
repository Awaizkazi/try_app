import 'package:flutter/material.dart';

class Profile_Screen extends StatefulWidget {
  const Profile_Screen({super.key});

  @override
  State<Profile_Screen> createState() => _Profile_ScreenState();
}

class _Profile_ScreenState extends State<Profile_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Account',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        // backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.dark_mode_outlined))
        ],
      ),
      body: SingleChildScrollView(),
    );
  }
}


//! https://www.youtube.com/watch?v=d4KFeRdZMcw
// TODO Video 4: 00 se dekna hai