import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:insta/models/bottomNavBar.dart';
import 'package:insta/models/postfield.dart';
import 'package:insta/models/stories.dart';
import 'package:insta/models/topBar.dart';

final _firestore = FirebaseFirestore.instance;
User loggedInUser;


class HomePage extends StatefulWidget {
  static const String id = 'Home_Screen';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
    final messageTextController = TextEditingController();
  final _auth = FirebaseAuth.instance;

  String messageText;

  @override
  void initState() {
    super.initState();
    getCurrentUser();
  }

  void getCurrentUser() async {
    try {
      final user = await _auth.currentUser;
      if (user != null) {
        loggedInUser = user;
        print(loggedInUser.email);
      }
    } catch (e) {
      print(e);
    }
  }
  int _counter = 0;
  void incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BttmNavBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            // padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Column(
              children: [
                TopBar(),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    // padding: EdgeInsets.,
                    child: Row(
                      children: [
                        Stories(
                            name: 'Steven Gerrard',
                            profilePath: 'assets/images/model.jpeg',
                            avatarPath: 'assets/images/model.jpeg'),
                        Stories(
                          name: 'M. Salah',
                          profilePath: 'assets/images/Msalah.jpg',
                          avatarPath: 'assets/images/Msalah.jpg',
                        ),
                        Stories(
                          name: 'Selena Gomez',
                          profilePath: 'assets/images/selena.jpg',
                          avatarPath: 'assets/images/selena.jpg',
                        ),
                        Stories(
                          name: 'Tom Hardy',
                          profilePath: 'assets/images/tom.jpg',
                          avatarPath: 'assets/images/tom.jpg',
                        ),
                        Stories(
                          name: 'Michael Owen',
                          profilePath: 'assets/images/owen.jpg',
                          avatarPath: 'assets/images/owen.jpg',
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                PostField(
                  name: 'Brad Pitt',
                  description: 'Actor, Film Maker',
                  imagePath: 'assets/images/brad1.jpg',
                ),
                SizedBox(
                  height: 10,
                ),
                PostField(
                  name: 'Selena Gomez',
                  description: 'Singer, Actor',
                  imagePath: 'assets/images/selena.jpg',
                ),
                SizedBox(
                  height: 10,
                ),
                PostField(
                  name: 'Mohomad Salah',
                  description: 'Footballer',
                  imagePath: 'assets/images/Msalah.jpg',
                ),
                SizedBox(
                  height: 10,
                ),
                PostField(
                  name: 'Tom Hardy',
                  description: 'Actor',
                  imagePath: 'assets/images/tom.jpg',
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
