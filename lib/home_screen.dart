import 'package:details/gps_screen.dart';
import 'package:details/support_screen.dart';
import 'package:details/tech_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static String id = 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Ezeeinfo cloud solutions'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, TechScreen.id);
                  },
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.computer,
                          size: 100,
                        ),
                        Text(
                          'Tech Team',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    height: 200,
                    width: 300,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, GpsScreen.id);
                  },
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.location_on,
                          size: 100,
                        ),
                        Text(
                          'Gps Team',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    height: 200,
                    width: 300,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, SupportScreen.id);
                  },
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.headset_mic,
                          size: 100,
                        ),
                        Text(
                          'Support Team',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    height: 200,
                    width: 300,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
