
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget
{
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen>
{
  @override
  Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Home"),
          ),
          body: Text("This is Home Screen"),
        );
  }
}