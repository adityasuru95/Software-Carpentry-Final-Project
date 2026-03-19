import 'package:flutter/material.dart';
import 'dart:core';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Voice(),
    );
  }
}

class Voice extends StatefulWidget {
  @override
  _VoiceState createState() => _VoiceState();
}

class _VoiceState extends State<Voice> {
  final myController = TextEditingController();
  var voice = 'a';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tumor size"),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Center(child: Text(voice)),
            TextField(
              controller: myController,
              onChanged: (value) {
                setState(() {
                  voice = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
