import 'dart:async';

import 'package:details/schema/itemservice.dart';
import 'package:details/screens/gps_screen.dart';
import 'package:details/screens/home_screen.dart';
import 'package:details/screens/support_screen.dart';
import 'package:details/screens/tech_screen.dart';
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
    method();
    realmMethod();
    Timer(
        const Duration(seconds: 5),
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
                  "images/ezeeimage.png",
                  width: 1000,
                  height: 1000,
                ),
              ]),
        ));
  }
}
