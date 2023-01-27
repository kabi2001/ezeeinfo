import 'dart:async';

import 'package:details/gps_screen.dart';
import 'package:details/home_screen.dart';
import 'package:details/route_pages.dart';
import 'package:details/support_screen.dart';
import 'package:details/tech_screen.dart';
//import 'package:details/route_pages.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Ezeeinfo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: WelcomScreen.id,
        routes: {
          WelcomScreen.id: (context) => const WelcomScreen(),
          HomeScreen.id: (context) => const HomeScreen(),
          TechScreen.id: (context) => const TechScreen(),
          GpsScreen.id: (context) => const GpsScreen(),
          SupportScreen.id: (context) => const SupportScreen(),
        });
  }
}
