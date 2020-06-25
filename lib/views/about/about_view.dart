import 'package:Nandraj_Rathod/constants/app_colors.dart';
import 'package:Nandraj_Rathod/views/about/about_desktop_view.dart';
import 'package:Nandraj_Rathod/views/about/about_mobile_view.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AboutView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        backgroundColor: primaryColor,
        body: ScreenTypeLayout(
          mobile: AboutMobileView(),
          desktop: AboutDesktopView(),
        ),
      ),
    );
  }
}
