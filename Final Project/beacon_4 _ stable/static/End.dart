import 'package:flutter/material.dart';
//import 'package:beacon/Beacon.dart';
//import 'package:beacon/End.dart';
//import 'package:beacon/Tracking.dart';
//import 'package:beacon/Login.dart';
//import 'package:beacon/Register.dart';
//import 'package:beacon/LandingPage.dart';

class End extends StatefulWidget {
  static const String id = 'End';
  @override
  _EndState createState() => _EndState();
}

class _EndState extends State<End> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("End"),
      ),
      body: Center(
        child: Text(
          "Help is on its way",
          style: TextStyle(fontSize: 60),
        ),
      ),
    );
  }
}
