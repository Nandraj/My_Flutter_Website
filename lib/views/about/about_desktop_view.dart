import 'package:Nandraj_Rathod/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AboutDesktopView extends StatelessWidget {
  Widget _contactIcons(String text, IconData icon, double iconSize) {
    return Card(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 7.0),
          child: Row(
            children: <Widget>[
              IconButton(
                icon: FaIcon(icon),
                onPressed: () {},
                iconSize: iconSize,
                color: primaryColor,
              ),
              Text(text,
                  style: TextStyle(
                    fontSize: iconSize / 2.1,
                  ))
            ],
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    double iconSize = deviceHeight * 0.06;
    return Container(
      margin: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            radius: deviceHeight * 0.3,
            backgroundImage: NetworkImage(
                "https://storage.googleapis.com/kaggle-avatars/images/4534630-kg.jpeg"),
          ),
          Text(
            "Nandraj Rathod",
            style: TextStyle(
              fontSize: deviceHeight * 0.09,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Pythonista, Flutterista",
            style: TextStyle(
              fontSize: deviceHeight * 0.05,
              color: primaryColorLight,
              letterSpacing: 2.5,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: deviceHeight * 0.04,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              _contactIcons("+91-8511906562", FontAwesomeIcons.phone, iconSize),
              _contactIcons("nandraj.rathod.009@gmail.com",
                  FontAwesomeIcons.envelope, iconSize),
              _contactIcons("", FontAwesomeIcons.github, iconSize),
              _contactIcons("", FontAwesomeIcons.twitter, iconSize),
              _contactIcons("", FontAwesomeIcons.medium, iconSize),
              _contactIcons("", FontAwesomeIcons.reddit, iconSize),
            ],
          ),
        ],
      ),
    );
  }
}
