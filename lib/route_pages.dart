import 'dart:async';

import 'package:details/gps_screen.dart';
import 'package:details/home_screen.dart';
import 'package:details/support_screen.dart';
import 'package:details/tech_screen.dart';
import 'package:flutter/material.dart';

class WelcomScreen extends StatefulWidget {
  const WelcomScreen({super.key});
  static String id = 'welcomescreen';

  @override
  State<WelcomScreen> createState() => _WelcomScreenState();
}

class _WelcomScreenState extends State<WelcomScreen> {
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const HomeScreen(),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white,
          body: Row(mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "images/ezeeInfo.png",
                  width: 1000,
                  height: 1000,
                ),
              ]),
        ));
  }
}
