import 'package:flutter/material.dart';
import 'dart:core';
import 'package:speech_to_text/speech_to_text.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_recognition_error.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: VoiceHome(),
    );
  }
}

class VoiceHome extends StatefulWidget {
  @override
  _VoiceHomeState createState() => _VoiceHomeState();
}

class _VoiceHomeState extends State<VoiceHome> {
  var voice;

  /////////////////////////////////////////////////////////////////////////////

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

  //////////////////////////////////////////////////////////////////////////////

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            FlatButton(
              child: Text('Start'),
              onPressed: startListening,
            ),
            FlatButton(
              child: Text('Stop'),
              onPressed: stopListening,
            ),
            FlatButton(
              child: Text('Cancel'),
              onPressed: cancelListening,
            ),
            Text(lastWords)
          ],
        ),
      ),
    );
  }

  ////////////////////////////////////////////////////////////////////////////////////////

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

//////////////////////////////////////////////////////////////////////////////

}
