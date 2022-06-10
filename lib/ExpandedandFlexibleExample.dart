import 'package:flutter/material.dart';

class ExpandedandFlexibleExample extends StatefulWidget {

  @override
  _ExpandedandFlexibleExampleState createState() => _ExpandedandFlexibleExampleState();
}

class _ExpandedandFlexibleExampleState extends State<ExpandedandFlexibleExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expanded"),
      ),
      body: Row(
        children: [
          // Expanded(
          //   child: Container(
          //     color: Colors.yellow,
          //   ),
          // ),
          // Container(
          //   height: 60.0,
          //   color: Colors.red,
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //     children: [
          //       Icon(Icons.home,color: Colors.white),
          //       Icon(Icons.home,color: Colors.white),
          //       Icon(Icons.home,color: Colors.white),
          //       Icon(Icons.home,color: Colors.white)
          //     ],
          //   ),
          // )

          Flexible(
            flex: 1,
            child: Container(
              color: Colors.red,
            ),
          ),
          Flexible(
            flex: 2,
            child: Container(
              color: Colors.blue,
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              color: Colors.yellow,
            ),
          ),
        ],
      ),
    );
  }
}
