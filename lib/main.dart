import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:insta/screens/home.dart';
import 'package:insta/screens/login.dart';
import 'package:insta/screens/profileScreen.dart';
import 'package:insta/screens/registration.dart';
import 'package:insta/screens/welomeScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    Assignment(),
  );
}

class Assignment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      initialRoute: WelcomeScreen.id,
      routes: {
        HomePage.id: (context) => HomePage(),
        ProfileScreen.id: (context) => ProfileScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        WelcomeScreen.id: (context) => WelcomeScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
      },
    );
  }
}
