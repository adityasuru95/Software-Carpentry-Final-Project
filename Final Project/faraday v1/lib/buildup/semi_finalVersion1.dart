import 'package:flutter/material.dart';
import 'dart:core';
import 'package:speech_to_text/speech_to_text.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_recognition_error.dart';

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
  int nWidgetsInCols = 3;

  bool _hasSpeech = false;
  String lastWords = "A";
  String lastError = "";
  String lastStatus = "";
  final SpeechToText speech = SpeechToText();

  @override
  void initState() {
    super.initState();
    initSpeechState();
  }

  Future<void> initSpeechState() async {
    bool hasSpeech = await speech.initialize(
        onError: errorListener, onStatus: statusListener);

    if (!mounted) return;
    setState(() {
      _hasSpeech = hasSpeech;
    });
  }

  @override
  Widget build(BuildContext context) {
    int row_no;
    int col_no;

    var voice = lastWords;

    List<Expanded> rowChild = [];
    List<Row> colChild = [];

    for (int i = 0; i < nWidgetsInRows; i++) {
      rowChild.add(
        Expanded(
          child: Container(
            color: Colors.blue,
            margin: EdgeInsets.all(10),
            child: FlatButton(onPressed: startListening, child: Text("$voice")),
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
            Container(
              margin: EdgeInsets.all(10),
              child: Column(
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
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.all(5),
              child: Center(
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
            ),
            SizedBox(
              height: 0,
            ),
            Expanded(
              child: Container(
                  margin: EdgeInsets.all(10),
                  child: ListView(children: colChild)),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  FlatButton(
                    onPressed: stopListening,
                    color: Colors.red,
                    child: Text("Stop"),
                  ),
                  FlatButton(
                    onPressed: cancelListening,
                    color: Colors.green,
                    child: Text("Cancel / Done"),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void startListening() {
    lastWords = "";
    lastError = "";
    speech.listen(onResult: resultListener, listenFor: Duration(seconds: 100));
    setState(() {});
  }

  void stopListening() {
    speech.stop();
    setState(() {});
  }

  void cancelListening() {
    speech.cancel();
    setState(() {});
  }

  void resultListener(SpeechRecognitionResult result) {
    setState(() {
      lastWords = "${result.recognizedWords} - ${result.finalResult}";
    });
  }

  void errorListener(SpeechRecognitionError error) {
    setState(() {
      lastError = "${error.errorMsg} - ${error.permanent}";
    });
  }

  void statusListener(String status) {
    setState(() {
      lastStatus = "$status";
    });
  }
}
