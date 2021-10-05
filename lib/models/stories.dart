import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  final String name;
  final String profilePath;
  final String avatarPath;

  Stories({this.name, this.profilePath, this.avatarPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 0.35,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(profilePath),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                // child: Image.asset(
                //   profilePath,
                //   fit: BoxFit.cover,
                // ),
              ),
              Positioned(
                right: 5,
                top: 5,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                  child: Text(
                    'Live',
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              CircleAvatar(
                radius: 13,
                backgroundColor: Color(0xffCC00FF),
                child: CircleAvatar(
                  radius: 11,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(avatarPath),
                    radius: 10,
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                name,
                style: TextStyle(color: Colors.black87, fontSize: 12),
              )
            ],
          )
        ],
      ),
    );
  }
}
