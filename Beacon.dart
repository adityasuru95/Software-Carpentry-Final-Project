import 'package:flutter/material.dart';
//import 'package:beacon/Beacon.dart';
import 'package:beacon/End.dart';
import 'package:beacon/Tracking.dart';
//import 'package:beacon/Login.dart';
//import 'package:beacon/Register.dart';
//import 'package:beacon/LandingPage.dart';

class Beacon extends StatefulWidget {
  static const String id = 'Beacon';
  @override
  _BeaconState createState() => _BeaconState();
}

class _BeaconState extends State<Beacon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Beacon"),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return End();
                }));
              },
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.all(10),
                child: Center(
                  child: Text(
                    "Medical Emergency",
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.deepOrangeAccent,
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  child: Container(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        onChanged: (value) {},
                        decoration: InputDecoration(
                          hintText: ("Tracking number"),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.blue, width: 1.0),
                            borderRadius:
                                BorderRadius.all(Radius.circular(32.0)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.lightBlueAccent, width: 2.0),
                            borderRadius:
                                BorderRadius.all(Radius.circular(32.0)),
                          ),
                        ),
                      )),
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Tracking();
                    }));
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Center(
                      child: Text(
                        "Track",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return End();
                }));
              },
              child: Container(
                child: Center(
                  child: Text(
                    "Security Emergency",
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
