import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, bottom: 10, right: 15, left: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Discover',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: CircleAvatar(
                  backgroundColor: Colors.blue,
                  radius: 6,
                ),
              )
            ],
          ),
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/model.jpeg'),
          ),
        ],
      ),
    );
  }
}
