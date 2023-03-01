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
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.dark_mode_outlined),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOxVz2U6ihsCFFFniOjh2UaBXxg3W_dkiOpQ&usqp=CAU'),
              ),
              SizedBox(height: 10),
              Text(
                'Owaiz Kazi',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              Text(
                'Owaizkazi78@gmail.com',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              SizedBox(height: 10),
              SizedBox(
                width: 200,
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.edit,
                    color: Colors.black,
                  ),
                  label: Text(
                    'Edit Profile',
                    style: TextStyle(color: Colors.black),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                    side: BorderSide.none,
                    shape: StadiumBorder(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


//! https://www.youtube.com/watch?v=d4KFeRdZMcw
// TODO Video 5: 31 se dekna hain