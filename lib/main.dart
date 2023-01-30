import 'package:details/screens/gps_screen.dart';
import 'package:details/screens/home_screen.dart';
import 'package:details/screens/support_screen.dart';
import 'package:details/screens/tech_screen.dart';
import 'package:details/screens/update_screen.dart';
import 'package:details/screens/welcome_screen.dart';
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
