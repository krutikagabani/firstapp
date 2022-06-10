import 'package:flutter/material.dart';

class TextWidgetExample extends StatefulWidget {
  @override
  _TextWidgetExampleState createState() => _TextWidgetExampleState();
}

class _TextWidgetExampleState extends State<TextWidgetExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Example"),
      ),
      body: Center(
        child: Text("Hello World!",style: TextStyle(
          fontSize: 25.0,
          color: Color(0xff43a047),
          //color: Colors.red,
            letterSpacing: 5.0,
          wordSpacing: 15.0,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          backgroundColor: Colors.yellow.shade200
        )),
      ),
    );
  }
}
