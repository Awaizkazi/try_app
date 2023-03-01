import 'package:flutter/material.dart';

class Profile_Screen extends StatefulWidget {
  const Profile_Screen({super.key});

  @override
  State<Profile_Screen> createState() => _Profile_ScreenState();
}

class _Profile_ScreenState extends State<Profile_Screen> {
  // TODO VARIABLE FOR Static Color
  final Color primaryBlueColor = Colors.blue;
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
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              CircleAvatar(
                radius: 55,
                backgroundColor: Colors.blue.shade300,
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOxVz2U6ihsCFFFniOjh2UaBXxg3W_dkiOpQ&usqp=CAU'),
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Owaiz Kazi',
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              Text(
                'Owaizkazi78@gmail.com',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 50,
                width: 250,
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.edit,
                    color: Colors.white,
                  ),
                  label: Text(
                    'Edit Profile',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    side: BorderSide.none,
                    shape: StadiumBorder(),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Divider(),
              // MENU
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileMenuWidget extends StatelessWidget {
  const ProfileMenuWidget({
    super.key,
    required this.title,
    required this.icon,
    required this.onPress,
    this.endIcon = true,
    this.textColor,
  });

  final String title;
  final IconData icon;
  final VoidCallback onPress;
  final bool endIcon;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPress,
      leading: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.blue.withOpacity(0.1),
        ),
        child: Icon(
          icon,
          color: Colors.blue,
        ),
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.bodySmall?.apply(color: textColor),
      ),
      trailing: endIcon
          ? Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.blue.withOpacity(0.1),
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_forward_ios),
              ),
            )
          : null,
    );
  }
}


//! https://www.youtube.com/watch?v=d4KFeRdZMcw
// TODO Video 5: 31 se dekna hain