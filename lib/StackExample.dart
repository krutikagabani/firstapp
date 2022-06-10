import 'package:flutter/material.dart';

class StackExample extends StatefulWidget {

  @override
  _StackExampleState createState() => _StackExampleState();
}

class _StackExampleState extends State<StackExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack Example"),
      ),
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.red,
          ),
          Positioned(
            bottom: 10.0,
            left: 10.0,
            right: 10.0,
            child: Container(
              height: 50.0,
              color: Colors.yellow,
              child: TextField(),
            ),
          ),
          // Positioned(
          //   top: 10.0,
          //   left: 10.0,
          //   child: Container(
          //     width: 50.0,
          //     height: 50.0,
          //     color: Colors.yellow,
          //   ),
          // ),
          // Positioned(
          //   top: 10.0,
          //   right: 10.0,
          //   child: Container(
          //     width: 50.0,
          //     height: 50.0,
          //     color: Colors.yellow,
          //   ),
          // ),
          // Positioned(
          //   bottom: 10.0,
          //   left: 10.0,
          //   child: Container(
          //     width: 50.0,
          //     height: 50.0,
          //     color: Colors.yellow,
          //   ),
          // ),
          // Positioned(
          //   bottom: 10.0,
          //   right: 10.0,
          //   child: Container(
          //     width: 50.0,
          //     height: 50.0,
          //     color: Colors.yellow,
          //   ),
          // ),
          // Container(
          //   width: 200.0,
          //   height: 200.0,
          //   color: Colors.green,
          // ),
          // Container(
          //   width: 100.0,
          //   height: 100.0,
          //   color: Colors.blue,
          // ),
        ],
      ),
    );
  }
}
