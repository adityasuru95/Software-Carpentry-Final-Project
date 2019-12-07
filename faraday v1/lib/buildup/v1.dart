import 'package:flutter/material.dart';
import 'dart:core';
import 'package:speech_to_text/speech_to_text.dart' as stt;

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
  final myController = TextEditingController();
  int nWidgetsInRows = 5;
  int nWidgetsInCols = 0;
  var voice;

  @override
  Widget build(BuildContext context) {
    int row_no;
    int col_no;

    List<Expanded> rowChild = [];
    List<Row> colChild = [];

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
            Expanded(
              child: Container(
                margin: EdgeInsets.all(10),
                child: ListView(
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text("No of mice"),
                        TextField(
                          controller: myController,
                          onChanged: (value) {
                            setState(() {
                              nWidgetsInCols = int.parse(value);
                            });
                          },
                        ),
                        Text("Row no"),
                        TextField(
                          controller: myController,
                          onChanged: (value) {
                            setState(() {
                              row_no = int.parse(value);
                            });
                          },
                        ),
                        Text("Column no"),
                        TextField(
                          controller: myController,
                          onChanged: (value) {
                            setState(() {
                              col_no = int.parse(value);
                            });
                          },
                        ),
                        Text("Value"),
                        TextField(
                          controller: myController,
                          onChanged: (value) {
                            setState(() {
                              row_no = int.parse(value);
                            });
                          },
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.all(5),
              child: Row(
                children: <Widget>[
                  Expanded(child: Container(child: Text("Mouse No"))),
                  Expanded(child: Container(child: Text("Gender"))),
                  Expanded(child: Container(child: Text("Length"))),
                  Expanded(child: Container(child: Text("Width"))),
                  Expanded(child: Container(child: Text("Weight"))),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
                child: Container(
                    margin: EdgeInsets.all(10),
                    child: ListView(children: colChild))),
          ],
        ),
      ),
    );
  }
}
