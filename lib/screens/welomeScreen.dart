import 'package:flutter/material.dart';
import 'package:insta/constants/buttons.dart';
import 'package:insta/screens/login.dart';
import 'package:insta/screens/registration.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'Welcome_Screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;
  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      duration: Duration(seconds: 5),
      vsync: this,
    );
    controller.forward();
    // animation =
    //     ColorTween(begin: Colors.red, end: Colors.black).animate(controller);
    // controller.addListener(() {
    //   setState(() {});
    // });

    @override
    void dispose() {
      controller.dispose();
      super.dispose();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('assets/images/assignment.jpg'),
                    height: 60,
                  ),
                ),
                TypewriterAnimatedTextKit(
                  text: ['Fake_Insta'],
                  textStyle: TextStyle(
                    fontSize: 45.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            Bttns(
              Colors.lightGreenAccent,
              'Login',
              () {
                Navigator.pushNamed(context, LoginScreen.id);
              },
            ),
            Bttns(
              Colors.greenAccent,
              'Register',
              () {
                Navigator.pushNamed(context, RegistrationScreen.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
