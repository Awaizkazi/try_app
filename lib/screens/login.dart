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
            image: NetworkImage('https://images.unsplash.com/photo-1604147706283-d7119b5b822c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8d2hpdGUlMjAlMjBiYWNrZ3JvdW5kfGVufDB8fDB8fA%3D%3D&w=1000&q=80'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
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
                  top: MediaQuery.of(context).size.height * 0.1),
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
                    obscureText: true,
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
            ButtonOnLoginScreen(
              title: 'Login',
              buttonBgColor: Colors.black38,
            ),
            ButtonOnLoginScreen(
              title: 'f Login In with Facebook',
              buttonBgColor: Colors.amber.shade400,
              textColor: Colors.indigo,
            ),
            Spacer(),
            Center(
              child: RichText(
                text: TextSpan(
                  text: 'Don\'t have an account?',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                  children: [
                    TextSpan(
                      text: 'Sign Up',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}

class ButtonOnLoginScreen extends StatelessWidget {
  final String? title;
  final Color? buttonBgColor;
  final Color? textColor;

  const ButtonOnLoginScreen({
    super.key,
    this.title,
    this.buttonBgColor,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      width: MediaQuery.of(context).size.width / 0.2,
      height: 50,
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          title!,
          style: TextStyle(color: textColor, fontSize: 20),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonBgColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
