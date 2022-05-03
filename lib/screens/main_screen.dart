import 'package:flutter/material.dart';
import 'package:tech_blog/const_colors.dart';
import 'package:tech_blog/models/fake_data.dart';

import '../gen/assets.gen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    double bodyMargin = size.width / 12;
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
                    foregroundDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      gradient: LinearGradient(
                        colors: GradiantColors.homePosterCoverGradiant,
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    width: size.width / 1.19,
                    height: size.height / 4.2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                        image: Image(
                          image: AssetImage(homePagePoster["imageAsset"]!),
                        ).image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 8,
                    right: 0,
                    left: 0,
                    child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              '${homePagePoster["writer"]} - ${homePagePoster["date"]}',
                              style: textTheme.subtitle1,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  ' ${homePagePoster["view"]} ',
                                  style: textTheme.subtitle1,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(
                                  Icons.remove_red_eye_sharp,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Text(
                          '${homePagePoster["title"]}',
                          style: textTheme.headline1,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              //  *hastag list view
              SizedBox(height: 16),
              Container(
                height: 60,
                child: ListView.builder(
                  itemCount: tagList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.fromLTRB(
                          5, 8, index == 0 ? bodyMargin : 10, 8),
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          gradient: LinearGradient(
                            colors: GradiantColors.tags,
                            begin: Alignment.centerRight,
                            end: Alignment.centerLeft,
                          ),
                          color: Colors.black,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(16, 8, 8, 8),
                          child: Row(
                            children: [
                              ImageIcon(
                                Assets.icons.hashtagicon,
                                color: Colors.white,
                                size: 16,
                              ),
                              SizedBox(width: 8),
                              Text(
                                '${tagList[index].title}',
                                style: textTheme.headline2,
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
