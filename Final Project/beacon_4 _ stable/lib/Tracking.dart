import 'package:flutter/material.dart';

class Tracking extends StatefulWidget {
  static const String id = 'Primary';
  @override
  _TrackingState createState() => _TrackingState();
}

class _TrackingState extends State<Tracking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Track')),
      ),
    );
  }
}
