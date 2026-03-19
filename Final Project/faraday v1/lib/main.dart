/// this app uses a very very very new plugin
/// speech_to_text 0.6.3
/// published on 13 November 2019
/// https://pub.dev/packages/speech_to_text

import 'package:flutter/material.dart';
import 'dart:core';
import 'package:speech_to_text/speech_to_text.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_recognition_error.dart';

/// the main function
/// i have put all the functions in the same file
/// to reduce the complexity.

/// the main function calls runApp function which comes with the
/// flutter material package.
/// MyApp is an object of class StatelessWidget.
/// Everything is a widget in flutter.
/// A widget is a widget of class widget.
void main() => runApp(MyApp());

/// the stateless widget (a static widget) calls a stateful widget
/// Stateful widget can be changed.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Table(),
    );
  }
}

/// this is the stateful widget which creates a state called TableState()
class Table extends StatefulWidget {
  @override
  _TableState createState() => _TableState();
}

/// this is where the main working happens
class _TableState extends State<Table> {
  /// defining the variables used in the following functions.
  final myController = TextEditingController(); // controlling the textfield
  static int nWidgetsInRows = 5; // the no. of columns
  static int nWidgetsInCols = 0; // the no. of rows

  /// these 5 variables have been used as it is from the
  /// speech_recognition_plugin
  /// it is an opensource repository for flutter on github, linked above.
  bool _hasSpeech = false;
  String lastWords = "0";
  String lastError = "";
  String lastStatus = "";
  final SpeechToText speech = SpeechToText();

  /// the table will store the values when the elements of the tables will
  /// be changed using recording. the count will help in indexing
  /// Why i<1000. Most people deal with ~20-30 mice. With 5 variables per mice,
  /// the gridview will contain less than 1000 fields
  /// => Less than 1000 elements in the table list.
  List<String> table = [for (int i = 0; i <= 1000; i++) '0'];
  int count = 0;

  /// overriding he initState method of the stateful class.
  /// inheriting the initstate method from the super class and
  /// adding initSpeechState. As given by the plugin.
  @override
  void initState() {
    super.initState();
    initSpeechState();
  }

  /// definition of the initSpeechState, as given by the plugin.
  Future<void> initSpeechState() async {
    bool hasSpeech = await speech.initialize(
        onError: errorListener, onStatus: statusListener);

    if (!mounted) return;
    setState(() {
      _hasSpeech = hasSpeech;
    });
  }

  /// this is where the build happens.
  /// a function called setState when called, will rebuild everything from this
  /// point. in the function, any variables which will be changed will have the
  /// updated values, unless they are reassigned in the build
  @override
  Widget build(BuildContext context) {
    /// lastWords is the string which is said by the user.
    var voice = lastWords;

    /// the count is the index of the field which was updated.
    /// the corresponding value in the table will be updated to the
    /// string (lastWords). We will assign this value to the field later.
    print(count);
    table[count] = lastWords;

    /// scaffold is a material widget - the skeleton of the UI of the app.
    return Scaffold(
      appBar: AppBar(
        title: Text("Tumor size"),
      ),

      /// safearea is a good practice so that the pixels do not go outside the screen
      /// the layout of the app is thus:
      /// we have a big column.
      /// the first element of the column is the Textfield to enter no of mice
      /// the second element is the gridview - scrollable 2D array
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

                    /// this is basically: when the value in the textfield is changed,
                    /// the set state function will be called,
                    /// this will update the no. of columns in the gridView.
                    onChanged: (value) {
                      setState(() {
                        nWidgetsInCols = int.parse(value);
                      });
                    },
                  ),
                ],
              ),
            ),

            /// a sized box is just an invisible "boundary" between 2 widgets
            SizedBox(
              height: 10, // 10 pixels
            ),

            /// here in this container we will show the "Header" - the title of the columns.
            Container(
              margin: EdgeInsets.all(5), // margin of 10 pixels
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

            /// the gridView begins.
            /// crossaxiscount = updated from the textfield above
            /// this shows the no. of "columns".
            /// Each element in the grid (children) is a container.
            /// The no. of such containers is rows * columns.
            /// each element is a flatbutton wrapped around a container.
            Expanded(
              child: GridView.count(
                  crossAxisCount: nWidgetsInRows,
                  children:
                      List.generate(nWidgetsInRows * nWidgetsInCols, (index) {
                    return Container(
                      color: Colors.blue,
                      margin: EdgeInsets.all(10),
                      child: FlatButton(
                        onPressed: () {
                          /// the count shows the id of the field which was pressed.
                          /// and the startlistening function is called.
                          count = index;
                          startListening();
                        },
                        child: Center(
                          child: Text(
                            table[index],
                          ),
                        ),
                      ),
                    );
                  })),
            ),

            /// these are the buttons to cancel recording
            /// And to refresh all the data points.
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
                    onPressed: () {
                      setState(() {
                        nWidgetsInCols = 0;
                        table = [for (int i = 0; i <= 1000; i++) '0'];
                      });
                    },
                    color: Colors.green,
                    child: Text("Refresh"),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// these functions come with the speech recognition plugin.

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
      var rW = result.recognizedWords;
      lastWords = "$rW";
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
