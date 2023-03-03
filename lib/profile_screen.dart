// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Profile_Screen extends StatelessWidget {
  const Profile_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff535353),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings),
          ),
        ],
        title: Text(
          'Profile',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: ProfileScreenMade(),
    );
  }
}

class ProfileScreenMade extends StatelessWidget {
  const ProfileScreenMade({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            color: Color(0xff535353),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 55,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOxVz2U6ihsCFFFniOjh2UaBXxg3W_dkiOpQ&usqp=CAU'),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Owaiz Kazi',
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                Text(
                  'Owaizkazi78@gmail.com',
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Account Infromation',
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          TextNames(
            fullName: 'Full Name',
            FullName: 'Marry Hanan',
            EmailLabel: 'Email',
            UserEmail: 'marrayhanan@gmail.com',
            addressLabel: 'Address',
            addressAns: '228 Jonathan Street..',
          ),
        ],
      ),
    );
  }
}

class TextNames extends StatelessWidget {
  final String? fullName,
      FullName,
      EmailLabel,
      UserEmail,
      addressLabel,
      addressAns;

  TextNames(
      {super.key,
      this.fullName,
      this.FullName,
      this.EmailLabel,
      this.UserEmail,
      this.addressLabel,
      this.addressAns});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(fullName!, style: TextStyle(fontSize: 15)),
          Text(FullName!,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Size(h: 10.0),
          Divider(thickness: 1.5),
          Text(EmailLabel!),
          Text(UserEmail!,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Size(h: 10.0),
          Divider(thickness: 1.5),
          Text(addressLabel!),
          Text(addressAns!,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Size(h: 10.0),
          Divider(thickness: 1.5),
          ProfileMenuWidget(
              title: 'My Orders', icon: Icons.shopping_cart, onPress: () {}),
          ProfileMenuWidget(
              title: 'Payment Method', icon: Icons.payment, onPress: () {}),
          ProfileMenuWidget(
            title: 'Settings',
            icon: Icons.settings,
            onPress: () {},
          ),
        ],
      ),
    );
  }
}

Widget Size({w, h}) {
  return SizedBox(
    height: h,
    width: w,
  );
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
        style: Theme.of(context)
            .textTheme
            .bodySmall
            ?.apply(color: textColor, fontSizeDelta: 5.0),
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
