import 'package:flutter/material.dart';
import 'package:try_app/screens/oboarding.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/login.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 110.0, left: 30),
              child: Text(
                'Log into\n your account',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30, right: 30),
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.2),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Enter your email",
                      labelText: "Username/Email",
                      labelStyle: new TextStyle(
                        color: const Color(0xFF424242),
                      ),
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Enter password",
                      labelText: "Password",
                      labelStyle: new TextStyle(
                        color: const Color(0xFF424242),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            CheckboxListTile(
              value: isChecked,
              title: Text("Remember me"),
              onChanged: (newBool) {
                setState(
                  () {
                    isChecked = newBool!;
                  },
                );
              },
              controlAffinity: ListTileControlAffinity.leading,
            ),
            ButtonOnLoginScreen(),
          ],
        ),
      ),
    );
  }
}

class ButtonOnLoginScreen extends StatelessWidget {
  const ButtonOnLoginScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    String title;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      width: MediaQuery.of(context).size.width / 0.2,
      height: 50,
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          'Login',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black54,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
