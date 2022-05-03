import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:tech_blog/const_colors.dart';
import 'package:tech_blog/screens/splash_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: SolidColors.statusBarColor,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: SolidColors.systemNavigationBarColor,
      systemNavigationBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('fa', ''), // farsi
      ],
      theme: ThemeData(
        fontFamily: 'dana',
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 16,
            color: SolidColors.posterTitle,
            fontWeight: FontWeight.w700,
          ),
          subtitle1: TextStyle(
            fontSize: 14,
            color: SolidColors.posterSubTitle,
            fontWeight: FontWeight.w300,
          ),
          headline2: TextStyle(
            fontSize: 14,
            color: Colors.white,
            fontWeight: FontWeight.w300,
          ),
          headline3: TextStyle(
            fontSize: 14,
            color: Color.fromARGB(255, 53, 53, 53),
            fontWeight: FontWeight.w700,
          ),
          headline4: TextStyle(
            fontSize: 14,
            color: Color.fromARGB(255, 70, 70, 70),
            fontWeight: FontWeight.w700,
          ),
          bodyText1: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
      home: SplashScreen(),
    );
  }
}
