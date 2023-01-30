import 'package:details/const.dart';
import 'package:details/screens/update_screen.dart';
import 'package:flutter/material.dart';

class SupportScreen extends StatefulWidget {
  const SupportScreen({super.key});
  static String id = 'SupportScreen';

  @override
  State<SupportScreen> createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
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
          title: kSupportTeamTitle,
        ),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, UpdateDetails.id);
                },
                child: kAddEmployeesText),
          )
        ]),
      ),
    );
  }
}
