import 'package:flutter/material.dart';

class SolidColors {
  static const Color primaryColor = Color(0xff440457);
  static const Color posterTitle = Color(0xffffffff);
  static Color posterSubTitle = Color(0xffffffff).withOpacity(.7);
  static const Color colorTitle = Color(0xff286BB8);
  static const Color textTitle = Color(0xff000000);
  static const Color scaffoldBg = Color(0xffffffff);
  static const Color statusBarColor = Color(0xffffffff);
  static const Color systemNavigationBarColor = Color(0xffffffff);
  static const Color lightText = Color(0xffFFFFFF);
  static const Color selectedPodCast = Color(0xffFF8B1A);
  static const Color submitArticle = Color(0xffD1D1D1);
  static const Color submitPodCast = Color(0xffF6F6F6);
  static const Color subText = Color(0xffC5C5C5);
}

class GradiantColors {
  static const List<Color> bottomNav = [
    const Color(0xff19005E),
    const Color(0xff440457),
  ];
  static const List<Color> tags = [
    const Color(0xff000000),
    const Color(0xff3f3f3f),
  ];
  static const List<Color> blogPost = [
    const Color.fromARGB(255, 0, 0, 0),
    const Color.fromARGB(0, 0, 0, 0),
  ];
  static List<Color> homePosterCoverGradiant = [
    const Color.fromARGB(0, 0, 0, 0),
    const Color.fromARGB(195, 72, 20, 88),
    const Color.fromARGB(255, 280, 20, 81),
  ];
}
