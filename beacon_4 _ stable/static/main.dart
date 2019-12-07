import 'package:flutter/material.dart';
import 'package:beacon/Beacon.dart';
import 'package:beacon/End.dart';
import 'package:beacon/Tracking.dart';
import 'package:beacon/Login.dart';
import 'package:beacon/Register.dart';
import 'package:beacon/LandingPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      initialRoute: LandingPage.id,
      routes: {
        LandingPage.id: (context) => LandingPage(),
        Register.id: (context) => Register(),
        Login.id: (context) => Login(),
        Beacon.id: (context) => Beacon(),
        Tracking.id: (context) => Tracking(),
        End.id: (context) => End()
      },
    );
  }
}
