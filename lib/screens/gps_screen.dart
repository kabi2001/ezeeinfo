import 'package:details/const.dart';
import 'package:details/screens/update_screen.dart';
import 'package:flutter/material.dart';

class GpsScreen extends StatefulWidget {
  const GpsScreen({super.key});
  static String id = 'GpsScreen';

  @override
  State<GpsScreen> createState() => _GpsScreenState();
}

class _GpsScreenState extends State<GpsScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: kBackButtonIcon,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          centerTitle: true,
          title: kGpsTeamTitle,
        ),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, UpdateDetails.id);
                },
                child: kAddEmployeesText),
          ),
        ]),
      ),
    );
  }
}
