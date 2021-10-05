import 'package:flutter/material.dart';

class FollowersFollowing extends StatelessWidget {
  final String count;
  final String tag;
  FollowersFollowing({this.count, this.tag});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          count,
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w700),
        ),
        Text(
          tag,
          style: TextStyle(
              color: Colors.black87, fontSize: 12, fontWeight: FontWeight.w200),
        ),
      ],
    );
  }
}
