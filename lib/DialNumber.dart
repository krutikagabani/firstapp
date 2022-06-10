import 'package:firstapp/HomeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DialNumber extends StatefulWidget
{
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<DialNumber>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("Dial Number..."),
    ),

      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 100,
                  width: 80,
                  child: Card(
                    color: Colors.blue,
                    child: Text("1",style: TextStyle(fontSize: 24.0, color: Colors.white),),
                  ),
                ),

                Container(
                  height: 100,
                  width: 80,
                  child: Card(
                    color: Colors.blue,
                    child: Text("2",style: TextStyle(fontSize: 24.0, color: Colors.white),),
                  ),
                ),

                Container(
                  height: 100,
                  width: 80,
                  child: Card(
                    color: Colors.blue,
                    child: Text("3",style: TextStyle(fontSize: 24.0, color: Colors.white),),
                  ),
                ),


              ],
              ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 100,
                  width: 80,
                  child: Card(
                    color: Colors.blue,
                    child: Text("4",style: TextStyle(fontSize: 24.0, color: Colors.white),),
                  ),
                ),

                Container(
                  height: 100,
                  width: 80,
                  child: Card(
                    color: Colors.blue,
                    child: Text("5",style: TextStyle(fontSize: 24.0, color: Colors.white),),
                  ),
                ),

                Container(
                  height: 100,
                  width: 80,
                  child: Card(
                    color: Colors.blue,
                    child: Text("6",style: TextStyle(fontSize: 24.0, color: Colors.white),),
                  ),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 100,
                  width: 80,
                  child: Card(
                    color: Colors.blue,
                    child: Text("7",style: TextStyle(fontSize: 24.0, color: Colors.white),),
                  ),
                ),

                Container(
                  height: 100,
                  width: 80,
                  child: Card(
                    color: Colors.blue,
                    child: Text("8",style: TextStyle(fontSize: 24.0, color: Colors.white),),
                  ),
                ),

                Container(
                  height: 100,
                  width: 80,
                  child: Card(
                    color: Colors.blue,
                    child: Text("9",style: TextStyle(fontSize: 24.0, color: Colors.white),),
                  ),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 100,
                  width: 80,
                  child: Card(
                    color: Colors.blue,
                    child: Text("*",style: TextStyle(fontSize: 24.0, color: Colors.white),),
                  ),
                ),

                Container(
                  height: 100,
                  width: 80,
                  child: Card(
                    color: Colors.blue,
                    child: Text("0",style: TextStyle(fontSize: 24.0, color: Colors.white),),
                  ),
                ),

                Container(
                  height: 100,
                  width: 80,
                  child: Card(
                    color: Colors.blue,
                    child: Text("#",style: TextStyle(fontSize: 24.0, color: Colors.white),),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
  }
}








