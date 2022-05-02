import 'package:flutter/material.dart';

import '../gen/assets.gen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Image(image: Assets.images.logo),
            ),
            Text('فونت فارسی')
          ],
        ),
      ),
    );
  }
}
