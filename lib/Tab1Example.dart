import 'package:flutter/material.dart';

class Tab1Example extends StatefulWidget {

  @override
  State<Tab1Example> createState() => _Tab1ExampleState();
}

class _Tab1ExampleState extends State<Tab1Example> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("Tab 1")
          ],
        ),
      ),
    );
  }
}
