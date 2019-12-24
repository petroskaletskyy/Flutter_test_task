import 'package:flutter/material.dart';
import 'dart:math' as math;

class BackgroundColorChange extends StatefulWidget {
  @override
  _BackgroundColorChangeState createState() {
    return new _BackgroundColorChangeState();
  }
}

class _BackgroundColorChangeState extends State<BackgroundColorChange> {
  static const String _text = 'Hey there';
  Color _color = Color(0xFFFFFF);

  void changeColor() {
    setState(() {
      _color = Color((math.Random().nextDouble() * 0xFFFFFF).toInt() << 0)
          .withOpacity(1.0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: _color,
      body: new InkWell(
        onTap: changeColor,
        child: new Center(
          child: new Text(
            _text,
            style: new TextStyle(
              fontSize: 32.0,
              fontFamily: 'Arial',
            ),
          ),
        ),
      ),
    );
  }
}
