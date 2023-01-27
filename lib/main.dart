import 'package:details/gps_screen.dart';
import 'package:details/home_screen.dart';
import 'package:details/route_pages.dart';
import 'package:details/support_screen.dart';
import 'package:details/tech_screen.dart';
import 'package:details/update_screen.dart';
//import 'package:details/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
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
          UpdateDetails.id: (context) => const UpdateDetails(),
        });
  }
}
