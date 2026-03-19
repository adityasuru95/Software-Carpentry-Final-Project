import 'package:flutter/material.dart';
import 'dart:core';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Table(),
    );
  }
}

class Table extends StatefulWidget {
  @override
  _TableState createState() => _TableState();
}

class _TableState extends State<Table> {
  @override
  Widget build(BuildContext context) {
    int nWidgetsInRows = 5;
    int nWidgetsInCols = 50;

    List<Expanded> rowChild = [];
    List<Row> colChild = [
      Row(
        children: <Widget>[
          Expanded(child: Container(child: Text("Mouse"))),
          Expanded(child: Container(child: Text("Mouse"))),
          Expanded(child: Container(child: Text("Mouse"))),
          Expanded(child: Container(child: Text("Mouse"))),
          Expanded(child: Container(child: Text("Mouse"))),
        ],
      )
    ];

    for (int i = 0; i < nWidgetsInRows; i++) {
      rowChild.add(
        Expanded(
          child: TextField(
            onChanged: (value) {},
            decoration: InputDecoration(hintText: "$i"),
          ),
        ),
      );
    }

    for (int i = 0; i < nWidgetsInCols; i++) {
      colChild.add(Row(children: rowChild));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Tumor size"),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(child: ListView(children: colChild)),
            Expanded(
                child: Container(
                    margin: EdgeInsets.all(20),
                    child: ListView(children: colChild))),
          ],
        ),
      ),
    );
  }
}
