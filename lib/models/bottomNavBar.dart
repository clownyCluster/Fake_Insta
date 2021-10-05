import 'package:flutter/material.dart';
import 'package:insta/screens/home.dart';
import 'package:insta/screens/profileScreen.dart';

class BttmNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      color: Colors.transparent.withOpacity(0),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: 40,
        // color: Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                icon: Icon(
                  Icons.home,
                  color: Colors.blue[700],
                ),
                onPressed: () {
                  Navigator.pushNamed(context, HomePage.id);
                }),
            IconButton(
                icon: Icon(
                  Icons.messenger,
                  color: Colors.blue[700],
                ),
                onPressed: () {}),
            SizedBox.shrink(),
            IconButton(
                icon: Icon(
                  Icons.notifications,
                  color: Colors.blue[700],
                ),
                onPressed: () {}),
            IconButton(
              icon: Icon(
                Icons.person,
                color: Colors.blue[700],
              ),
              onPressed: () {
                Navigator.pushNamed(context, ProfileScreen.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
