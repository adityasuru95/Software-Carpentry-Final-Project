/// DONE DONE DONE
/// Now, when i "press" a button, only that value changes
/// Gridview did the trick
/// Now, instead of the flatButtons with normal set state and all, i just
/// neeed to updat the earlier code.

import 'package:flutter/material.dart';

/// its all a game of scopes and definitions.
/// And indexing
/// Store the value of the ith gridview child in the ith index !!!
/// and when the button is pressed (voice recording), simply update the VALUE.
/// with gridview, we get the INDEX TOO...

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: gridway());
  }
}

class gridway extends StatefulWidget {
  @override
  _gridwayState createState() => _gridwayState();
}

class _gridwayState extends State<gridway> {
  List<String> table = [for (int i = 15; i < 30; i++) '$i'];

  @override
  Widget build(BuildContext context) {
    print(table);
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 5,
        children: List.generate(15, (index) {
          return Container(
            color: Colors.blue,
            margin: EdgeInsets.all(10),
            child: FlatButton(
              onPressed: () {
                setState(() {
                  table[index] = 'AAA';
                });
              },
              child: Center(
                child: Text(
                  table[index],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
