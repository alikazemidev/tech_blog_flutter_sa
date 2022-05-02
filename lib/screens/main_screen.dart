import 'package:flutter/material.dart';
import 'package:tech_blog/const_colors.dart';

import '../gen/assets.gen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: SolidColors.scaffoldBg,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: Column(
          children: [
            // *custom appbar
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.menu),
                Image(
                  image: Assets.images.logo,
                  height: size.height / 13.6,
                ),
                Icon(Icons.search),
              ],
            ),
            SizedBox(height: 8),
            //  *top poster
            Stack(
              children: [
                Container(
                  width: size.width / 1.19,
                  height: size.height / 4.2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(
                      image: Image(
                        image: Assets.images.programming,
                      ).image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  width: size.width / 1.19,
                  height: size.height / 4.2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    gradient: LinearGradient(
                      colors: GradiantColors.homePosterCoverGradiant,
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
