
import 'package:flutter/material.dart';
import 'package:insta/models/bottomNavBar.dart';
import 'package:insta/models/followingFollowers.dart';


class ProfileScreen extends StatefulWidget {
  static const String id = 'Profile_Screen';

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
        child: Container(
          padding: EdgeInsets.only(top: 10, left: 10, right: 10),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 10, right: 10, top: 20),
                child: Stack(
                  children: [
                    Positioned(
                      top: -15,
                      right: -10,
                      child: IconButton(
                          icon: Icon(
                            Icons.menu_open_sharp,
                            color: Colors.black54,
                          ),
                          onPressed: () {}),
                    ),
                    Row(
                      children: [
                        Stack(
                          children: [
                            CircleAvatar(
                              radius: 50,
                              backgroundImage:
                                  AssetImage('assets/images/tom.jpg'),
                            ),
                            Positioned(
                              bottom: 0,
                              left: 10,
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 2),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.blue,
                                ),
                                child: Text(
                                  'Edit Profile',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Jonny Deep',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              'Carrow Road, Norwich',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w300),
                            ),
                            Text(
                              'Movies: Pirates of Carrabean',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black45,
                                  fontWeight: FontWeight.w200),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    FollowersFollowing(
                      count: '109',
                      tag: 'Posts',
                    ),
                    FollowersFollowing(
                      count: '1.5M',
                      tag: 'Followers',
                    ),
                    FollowersFollowing(
                      count: '80',
                      tag: 'Following',
                    )
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 3,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  children: [
                    Image.asset('assets/images/brad.jpg', fit: BoxFit.cover),
                    Image.asset('assets/images/brad1.jpg', fit: BoxFit.cover),
                    Image.asset('assets/images/model.jpeg', fit: BoxFit.cover),
                    Image.asset('assets/images/Msalah.jpg', fit: BoxFit.cover),
                    Image.asset('assets/images/owen.jpg', fit: BoxFit.cover),
                    Image.asset('assets/images/tom.jpg', fit: BoxFit.cover),
                    Image.asset('assets/images/selena.jpg', fit: BoxFit.cover),
                    Image.asset('assets/images/model.jpeg', fit: BoxFit.cover),
                    Image.asset('assets/images/Msalah.jpg', fit: BoxFit.cover),
                    Image.asset('assets/images/owen.jpg', fit: BoxFit.cover),
                    Image.asset('assets/images/tom.jpg', fit: BoxFit.cover),
                    Image.asset('assets/images/selena.jpg', fit: BoxFit.cover),
                    Image.asset('assets/images/brad.jpg', fit: BoxFit.cover),
                    Image.asset('assets/images/brad1.jpg', fit: BoxFit.cover),
                    Image.asset('assets/images/model.jpeg', fit: BoxFit.cover),
                    Image.asset('assets/images/Msalah.jpg', fit: BoxFit.cover),
                    Image.asset('assets/images/owen.jpg', fit: BoxFit.cover),
                    Image.asset('assets/images/tom.jpg', fit: BoxFit.cover),
                    Image.asset('assets/images/selena.jpg', fit: BoxFit.cover),
                    Image.asset('assets/images/model.jpeg', fit: BoxFit.cover),
                    Image.asset('assets/images/Msalah.jpg', fit: BoxFit.cover),
                    Image.asset('assets/images/owen.jpg', fit: BoxFit.cover),
                    Image.asset('assets/images/tom.jpg', fit: BoxFit.cover),
                    Image.asset('assets/images/selena.jpg', fit: BoxFit.cover),
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

