import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO Controller to keep track of which page we're on
    PageController _controller = PageController();

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/login.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  // TODO  Page Views
                  PageView(
                    controller: _controller,
                    children: [
                      //TODO OnBoarding Screen 1
                      OnBoardingContent(
                          title: 'Welcome',
                          description:
                              'Discover New Spring Collection\n Everyday with MEY|'),
                      //TODO OnBoarding Screen 2
                      OnBoardingContent(
                          title: 'Browse',
                          description:
                              'We Connect to your\nfavourite online brands so let\s\nbrowse it with MEY|'),
                      //TODO OnBoarding Screen 3
                      OnBoardingContent(
                          title: 'Ready, Shop',
                          description:
                              'Find the perfect collection\n for you on MEY|'),
                    ],
                  ),
                  // TODO Smooth Page Indicator
                  Container(
                    alignment: Alignment(0.8, 0.40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        //TODO  Skip
                        Container(
                          // margin: EdgeInsets.all(12),
                          padding:
                              EdgeInsets.only(left: 300, right: 10, bottom: 20),
                          child: GestureDetector(
                            onTap: () {
                              _controller.jumpToPage(2);
                            },
                            child: Text(
                              'Skip',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                        ),
                        Center(
                          child: SmoothPageIndicator(
                              controller: _controller, count: 3),
                        ),

                        // TODO NEXT or Done
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OnBoardingContent extends StatelessWidget {
  const OnBoardingContent({
    super.key,
    required this.title,
    required this.description,
  });

  final String? title, description;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(left: 350, right: 10, top: 50),
            // child: Text(
            //   'Skip',
            //   style: TextStyle(color: Colors.white, fontSize: 18),
            // ),
          ),
          Container(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.4,
                right: 20,
                left: 20),
            child: Column(
              children: [
                Text(
                  title!,
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Spacer(),
                Text(
                  description!,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 19),
                ),
                Spacer(flex: 3),
                LoginElevatedButton(
                  buttonBgColor: Colors.white,
                  buttonLabel: 'Start Shopping',
                ),
                SizedBox(height: 20),
                RichText(
                  text: TextSpan(
                    text: 'Already have an account?',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                    children: [
                      TextSpan(
                        text: 'Login',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
        ],
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
            onPressed: () {},
            label: Text(
              buttonLabel!,
              style: TextStyle(
                  color: Colors.indigo,
                  fontWeight: FontWeight.bold,
                  fontSize: 17),
            ),
            icon: Icon(
              buttonIcon,
              color: Colors.indigo,
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: buttonBgColor,
              elevation: 10,
              fixedSize: Size(340, 50),
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
