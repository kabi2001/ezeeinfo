import 'package:details/update_screen.dart';
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
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          centerTitle: true,
          title: const Text(
            'Gps Team',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, UpdateDetails.id);
                },
                child: const Text(
                  'Add Employees',
                  style: TextStyle(color: Colors.black, fontSize: 20.0),
                )),
          )
        ]),
      ),
    );
  }
}
