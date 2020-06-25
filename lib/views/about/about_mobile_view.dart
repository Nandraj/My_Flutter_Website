import 'package:Nandraj_Rathod/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/services.dart';

class AboutMobileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    final deviceWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            radius: deviceWidth * 0.3,
            backgroundImage: AssetImage("assets/images/NR.jpg"),
          ),
          Text(
            "Nandraj Rathod",
            style: TextStyle(
              fontSize: deviceWidth * 0.09,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Pythonista, Flutterista",
            style: TextStyle(
              fontSize: deviceWidth * 0.05,
              color: primaryColorLight,
              letterSpacing: 2.5,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20.0,
            width: deviceWidth * 0.90,
            child: Divider(
              color: primaryColorLight,
            ),
          ),
          Card(
            color: Colors.white,
            margin: EdgeInsets.symmetric(vertical: 6.0, horizontal: 15.0),
            child: ListTile(
              leading: FaIcon(
                FontAwesomeIcons.phone,
                color: primaryColor,
              ),
              title: Text(
                "+91-8511906562",
                style: TextStyle(
                  color: primaryColorDark,
                  fontSize: deviceWidth * 0.04,
                ),
              ),
            ),
          ),
          Card(
            color: Colors.white,
            margin: EdgeInsets.symmetric(vertical: 6.0, horizontal: 15.0),
            child: ListTile(
              leading: FaIcon(
                FontAwesomeIcons.envelope,
                color: primaryColor,
              ),
              title: Text(
                "nandraj.rathod.009@gmail.com.",
                style: TextStyle(
                  color: primaryColorDark,
                  fontSize: deviceWidth * 0.04,
                ),
              ),
            ),
          ),
          Card(
            color: Colors.white,
            margin: EdgeInsets.symmetric(vertical: 6.0, horizontal: 15.0),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  IconButton(
                    icon: FaIcon(FontAwesomeIcons.github),
                    onPressed: () {},
                    iconSize: deviceWidth * 0.08,
                    color: primaryColor,
                  ),
                  IconButton(
                    icon: FaIcon(FontAwesomeIcons.twitter),
                    onPressed: () {},
                    iconSize: deviceWidth * 0.08,
                    color: primaryColor,
                  ),
                  IconButton(
                    icon: FaIcon(FontAwesomeIcons.medium),
                    onPressed: () {},
                    iconSize: deviceWidth * 0.08,
                    color: primaryColor,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
