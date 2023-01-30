import 'package:details/const.dart';
import 'package:details/screens/update_screen.dart';
import 'package:flutter/material.dart';

class TechScreen extends StatefulWidget {
  const TechScreen({super.key});
  static String id = 'TechScreen';

  @override
  State<TechScreen> createState() => _TechScreenState();
}

class _TechScreenState extends State<TechScreen> {
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
          title: kTechTeamTitle,
        ),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, UpdateDetails.id);
              },
              child: kAddEmployeesText,
            ),
          )
        ]),
      ),
    );
  }
}
