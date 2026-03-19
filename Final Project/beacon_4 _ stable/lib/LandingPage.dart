import 'package:flutter/material.dart';
import 'package:beacon_4/Tracking.dart';
import 'package:beacon_4/Primary.dart';
import 'package:beacon_4/Register.dart';
import 'package:beacon_4/FileUtils.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    var loginCondition = false;

    var userId;

    FileUtils.readFromFile().then((contents) {
      userId = contents;
    });

    print(userId);

    if (loginCondition == true) {
      return MaterialApp(
        initialRoute: Primary.id,
        routes: {
          Register.id: (context) => Register(),
          Primary.id: (context) => Primary(),
          Tracking.id: (context) => Tracking()
        },
      );
    } else {
      return MaterialApp(
        initialRoute: Register.id,
        routes: {
          Register.id: (context) => Register(),
          Primary.id: (context) => Primary(),
          Tracking.id: (context) => Tracking()
        },
      );
    }
    ;
  }
}
