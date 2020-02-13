import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(BackgroundChanger());

class BackgroundChanger extends StatefulWidget {
  BackgroundChanger({Key key}) : super(key: key);

  _BackgroundChangerState createState() => _BackgroundChangerState();
}

class _BackgroundChangerState extends State<BackgroundChanger> {
  var _bgColor;

  @override
  void initState() {
    super.initState();
    _bgColor = Colors.primaries[Random().nextInt(Colors.primaries.length)];
  }

  void changeColor() {
    setState(() {
      _bgColor = Colors.primaries[Random().nextInt(Colors.primaries.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Stateful app",
        home: Scaffold(
          body: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: new RaisedButton(
              color: _bgColor,
              child: new Text('Hey there'),
              onPressed: () {
                changeColor();
              },
            ),
          ),
        ),
      ),
    );
  }
}
