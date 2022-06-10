import 'package:flutter/material.dart';

class CardWidgetExample extends StatefulWidget {

  @override
  _CardWidgetExampleState createState() => _CardWidgetExampleState();
}

class _CardWidgetExampleState extends State<CardWidgetExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card Example"),
      ),
      body: Center(
        child: Container(
          width: 200.0,
          height: 200.0,
          decoration: BoxDecoration(
            color: Colors.red,
          ),
          child : Card(
            color: Colors.yellow.shade400,
            elevation: 15.0,
            child: Text("Hello World!"),
          ),
        ),
      ),
    );
  }
}
