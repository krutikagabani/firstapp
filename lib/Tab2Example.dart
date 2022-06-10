import 'package:flutter/material.dart';

class Tab2Example extends StatefulWidget {

  @override
  State<Tab2Example> createState() => _Tab2ExampleState();
}

class _Tab2ExampleState extends State<Tab2Example> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("Tab 2")
          ],
        ),
      ),
    );
  }
}
