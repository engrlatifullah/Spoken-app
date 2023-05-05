import 'package:flutter/material.dart';
import 'package:spokenapp/screens/bottom_nav_bar.dart';
import 'package:spokenapp/screens/home_screen.dart';
import 'package:get/get.dart';

import 'constant.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: backgroundColor
      ),
      home: MaterialApp(
        home: BottomNavBar(),
      ),
    );
  }
}

