import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter/routing/screen_one.dart';
import 'package:getx_flutter/routing/screen_three.dart';
import 'package:getx_flutter/routing/screen_two.dart';
import 'package:getx_flutter/theme.dart';

import 'home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ScreenOne(),
      getPages: [
        GetPage(name: '/', page: () => const ScreenOne()),
        GetPage(name: '/stwo', page: () => ScreenTwo()),
        GetPage(name: '/sthree', page: () => const ScreenThree()),
      ],
    );
  }
}

