
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:insta/models/bottomNavBar.dart';
import 'package:insta/models/postfield.dart';
import 'package:insta/models/stories.dart';
import 'package:insta/models/topBar.dart';
import 'package:insta/models/userInfo.dart';

User loggedInUser;

UserInfoDetail userDetail = UserInfoDetail();

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

  // int _counter = 0;
  // void incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }

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
                  name: userDetail.userInfo[0].name,
                  description: userDetail.userInfo[0].description,
                  imagePath: userDetail.userInfo[0].path,
                ),
                SizedBox(
                  height: 10,
                ),
                PostField(
                  name: userDetail.userInfo[1].name,
                  description: userDetail.userInfo[1].description,
                  imagePath: userDetail.userInfo[1].path,
                ),
                SizedBox(
                  height: 10,
                ),
                PostField(
                  name: userDetail.userInfo[2].name,
                  description: userDetail.userInfo[2].description,
                  imagePath: userDetail.userInfo[2].path,
                ),
                SizedBox(
                  height: 10,
                ),
                PostField(
                  name: userDetail.userInfo[3].name,
                  description: userDetail.userInfo[3].description,
                  imagePath: userDetail.userInfo[3].path,
                ),
                SizedBox(
                  height: 10,
                ),
                PostField(
                  name: userDetail.userInfo[4].name,
                  description: userDetail.userInfo[4].description,
                  imagePath: userDetail.userInfo[4].path,
                ),
                SizedBox(
                  height: 10,
                ),
                PostField(
                  name: userDetail.userInfo[5].name,
                  description: userDetail.userInfo[5].description,
                  imagePath: userDetail.userInfo[5].path,
                ),
                SizedBox(
                  height: 10,
                ),
                PostField(
                  name: userDetail.userInfo[6].name,
                  description: userDetail.userInfo[6].description,
                  imagePath: userDetail.userInfo[6].path,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
