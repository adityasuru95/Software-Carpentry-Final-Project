// goal - to change the values in the table by using the common TextFields

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
  static int nWidgetsInRows = 5;
  static int nWidgetsInCols = 4;
  var voice;
  int rowNo = 4;
  int colNo = 2;

  List<List<int>> values = [
    for (int j = 0; j < nWidgetsInCols; j++)
      [for (int i = 0; i < nWidgetsInRows; i++) i + j]
  ];

  @override
  Widget build(BuildContext context) {
    Expanded rowChild = Expanded();
    List<Row> colChild = [];

    List<List<int>> values = [
      for (int j = 0; j < nWidgetsInCols; j++)
        [for (int i = 0; i < nWidgetsInRows; i++) i + j]
    ];

    print(values);

    /// now just do this: change the 'column' values.
    /// then you just need to change the rowNo and colNo to update the values!!!

    List<Expanded> listOfRowChilds = [];

    for (int j = 0; j < nWidgetsInCols; j++) {
      for (int i = 0; i < nWidgetsInRows; i++) {
        var temp = values[j][i];
        listOfRowChilds.add(
          Expanded(
            child: TextField(
              onChanged: (value) {},
              decoration: InputDecoration(hintText: "$temp"),
            ),
          ),
        );
      }
    }

    for (int i = 0; i < nWidgetsInCols; i++) {
      rowChild = listOfRowChilds[i];
      colChild.add(Row(children: [rowChild]));
    }

    setState(() {});

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
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Please enter a search term'),
                          controller: myController,
                          onChanged: (value) {
                            setState(() {
                              nWidgetsInCols = int.parse(value);
                            });
                          },
                        ),
//                        Text("Row no"),
//                        TextField(
//                          decoration: InputDecoration(
//                              border: InputBorder.none,
//                              hintText: 'Please enter a search term'),
//                          controller: myController,
//                          onChanged: (value) {
//                            setState(() {
//                              rowNo = int.parse(value);
//                            });
//                          },
//                        ),
//                        Text("Column no"),
//                        TextField(
//                          controller: myController,
//                          onChanged: (value) {
//                            setState(() {
//                              colNo = int.parse(value);
//                            });
//                          },
//                        ),
//                        Text("Value"),
//                        TextField(
//                          controller: myController,
//                          onChanged: (value) {
//                            setState(() {
//                              row_no = int.parse(value);
//                            });
//                          },
//                        )
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

//      rowChild[rowNo] = Expanded(
//        child: TextField(
//          onChanged: (value) {},
//          decoration: InputDecoration(hintText: "h"),
//        ),
//      );

//      colChild[rowNo] = Row(
//        children: <Widget>[Text("1111111111111111")],
//      );

//      colChild[colNo] = Row(
//        children: rowChild,
//      );

/// changing the field in the table
/// I was doing this wrong.
/// setState should come AFTER declatation of the colChild !!!
/// That's why that error was coming.
/// How do I update the value of the field
/// I have the rows and columns defined
/// So, if I make change in say, rowChild, it is going to be a "replacement"

//    rowChild.replaceRange(rowNo, rowNo + 1, [
//      Expanded(
//        child: TextField(
//          onChanged: (value) {},
//          decoration: InputDecoration(hintText: "a"),
//        ),
//      )
//    ]);
//
//    colChild.replaceRange(colNo, colNo + 1, [
//      Row(children: [Text("I am a r")])
//    ]);

//colChild[1] = Row(children: rowChild);
