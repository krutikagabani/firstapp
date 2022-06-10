import 'package:flutter/material.dart';

class Tab3Example extends StatefulWidget {

  @override
  State<Tab3Example> createState() => _Tab3ExampleState();
}

class _Tab3ExampleState extends State<Tab3Example> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
            children: [
              Text("Tab 3")
            ],
          ),
        ),
    );
  }
}
