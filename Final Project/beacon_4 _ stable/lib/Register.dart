import 'package:beacon_4/Primary.dart';
import 'package:flutter/material.dart';
import 'FileUtils.dart';

class Register extends StatefulWidget {
  static const String id = 'Register';
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  var userId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Register or LogIn')),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20),
              child: TextField(
                onChanged: (value) {
                  FileUtils.saveToFile(value);
                },
                decoration: InputDecoration(
                  hintText: ("Enter your name"),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.lightBlueAccent, width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: TextField(
                onChanged: (value) {
                  FileUtils.saveToFile(value);
                },
                decoration: InputDecoration(
                  hintText: ("Enter your name"),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.lightBlueAccent, width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  "Are you a doctor / police",
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Center(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: FlatButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Primary();
                          }));
                        },
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          child: Icon(
                            Icons.add_alert,
                            color: Colors.red,
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)),
                          margin: EdgeInsets.all(8),
                        ),
                      ),
                    ),
                    Expanded(
                      child: FlatButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Primary();
                          }));
                        },
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          child: Icon(
                            Icons.security,
                            color: Colors.blue,
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)),
                          margin: EdgeInsets.all(8),
                        ),
                      ),
                    ),
                    Expanded(
                      child: FlatButton(
                        onPressed: () {
                          FileUtils.readFromFile().then((contents) {
                            setState(() {
                              userId = contents;
                            });
                          });
                        },
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          child: Center(
                            child: Text(
                              "None",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)),
                          margin: EdgeInsets.all(8),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(child: SizedBox()),
            Text('$userId'),
          ],
        ),
      ),
    );
  }
}
