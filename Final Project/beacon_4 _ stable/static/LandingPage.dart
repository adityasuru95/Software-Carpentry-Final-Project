import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:beacon/Beacon.dart';
//import 'package:beacon/End.dart';
//import 'package:beacon/Tracking.dart';
import 'package:beacon/Login.dart';
import 'package:beacon/Register.dart';
//import 'package:beacon/LandingPage.dart';

class LandingPage extends StatefulWidget {
  static const String id = 'LandingPage';
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Land Page"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            child: FlatButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Register();
                }));
              },
              child: Container(
                padding: EdgeInsets.all(20),
                width: double.infinity,
                child: Center(
                  child: Text(
                    "Register",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.cyanAccent,
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Login();
                }));
              },
              child: Container(
                padding: EdgeInsets.all(20),
                width: double.infinity,
                child: Center(
                  child: Text(
                    "Login",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
