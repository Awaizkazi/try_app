import 'package:flutter/material.dart';
import 'package:try_app/screens/oboarding.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/login.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          child: Stack(
            children: [
              Container(
                padding: EdgeInsets.only(left: 350, right: 10, top: 50),
                child: Text(
                  'Log In',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.5,
                    right: 20,
                    left: 20),
                child: Column(
                  children: [
                    Text(
                      'MEY',
                      style: TextStyle(color: Colors.black, fontSize: 30),
                    ),
                    SizedBox(height: 100),
                    LoginElevatedButton(
                      buttonBgColor: Colors.amber,
                      buttonLabel: 'Sign Up with Email',
                      buttonIcon: (Icons.email_outlined),
                    ),
                    SizedBox(height: 20),
                    LoginElevatedButton(
                      buttonBgColor: Colors.white,
                      buttonLabel: 'f    Continue with Facebook',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginElevatedButton extends StatelessWidget {
  //TODO To make a Paramters Optional assign it in {} and at the time of declare there is ? added in Variables ex :   final String? buttonLabel;
  final String? buttonLabel;
  final IconData? buttonIcon;
  final Color? buttonBgColor;

  LoginElevatedButton({
    super.key,
    this.buttonLabel,
    this.buttonIcon,
    this.buttonBgColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ElevatedButton.icon(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const OnBoardingScreen(),
                ),
              );
            },
            label: Text(
              buttonLabel!,
              style: TextStyle(
                  color: Colors.indigo,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            icon: Icon(
              buttonIcon,
              color: Colors.indigo,
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: buttonBgColor,
              fixedSize: Size(340, 50),
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
