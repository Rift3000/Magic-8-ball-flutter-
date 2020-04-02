import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      appBar: AppBar(
        title: Center(child: Text("Ask Me Anything")),
        backgroundColor: Colors.blue[800],
      ),
      body: Magic(),
    );
  }
}

class Magic extends StatefulWidget {
  @override
  _MagicState createState() => _MagicState();
}

class _MagicState extends State<Magic> {
  int roller = 0;
  void roadRoller() {
    setState(() {
      roller = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FlatButton(
            onPressed: () {
              roadRoller();
            },
            child: Image.asset("images/ball$roller.png"),
          ),
        ],
      ),
    );
  }
}
