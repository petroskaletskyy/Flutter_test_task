import 'package:flutter/material.dart';

import 'BackgroundColorChange.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const String _title = 'Main page';

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(_title),
          backgroundColor: Color.fromRGBO(0, 24, 128, 0.8),
          centerTitle: true,
        ),
        body: BackgroundColorChange(),
      ),
    );
  }
}
