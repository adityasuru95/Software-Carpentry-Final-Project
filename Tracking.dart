import 'package:flutter/material.dart';
//import 'package:beacon/Beacon.dart';
//import 'package:beacon/End.dart';
//import 'package:beacon/Tracking.dart';
//import 'package:beacon/Login.dart';
//import 'package:beacon/Register.dart';
//import 'package:beacon/LandingPage.dart';

class Tracking extends StatefulWidget {
  static const String id = 'Tracking';
  @override
  _TrackingState createState() => _TrackingState();
}

class _TrackingState extends State<Tracking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tracking"),
      ),
      body: Center(child: Text("Your location is")),
    );
  }
}
