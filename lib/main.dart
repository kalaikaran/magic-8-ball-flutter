import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyEightBall());

class MyEightBall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Ask me Anything",
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.blue.shade900,
          title: Text(
            "Ask Me Anything",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ),
        body: EightBallUI(),
      ),
    );
  }
}

class EightBallUI extends StatefulWidget {
  @override
  _EightBallUIState createState() => _EightBallUIState();
}

class _EightBallUIState extends State<EightBallUI> {
  int _luck = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FlatButton(
          onPressed: () {
            setState(() {
              _luck = Random().nextInt(5) + 1;
            });
          },
          child: Image.asset("images/ball$_luck.png"),
        ),
      ],
    );
  }
}
