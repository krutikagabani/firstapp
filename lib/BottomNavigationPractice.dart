import 'package:flutter/material.dart';

import 'DialNumber.dart';
import 'Tab1Example.dart';
import 'Tab2Example.dart';
import 'Tab3Example.dart';

class BottomNavigationPractice extends StatefulWidget {

  @override
  State<BottomNavigationPractice> createState() => _BottomNavigationPracticeState();
}

class _BottomNavigationPracticeState extends State<BottomNavigationPractice> {
  var selected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Navigation"),
        backgroundColor: (selected == 0)
            ? Colors.red
            : (selected == 1)
            ? Colors.amber
            : (selected == 2)
            ? Colors.blue
            : Colors.green,
      ),
      floatingActionButton: FloatingActionButton(
        //Floating action button on Scaffold
        onPressed: () {},
        child: Icon(Icons.send),
        backgroundColor: (selected == 0)
            ? Colors.red
            : (selected == 1)
            ? Colors.amber
            : (selected == 2)
            ? Colors.blue
            : Colors.green, //icon inside button
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      //floating action button location to left

      bottomNavigationBar: BottomAppBar( //bottom navigation bar on scaffold
        color: Colors.white,
        elevation: 40,
        shape: CircularNotchedRectangle(), //shape of notch
        notchMargin: 5, //notche margin between floating button and bottom appbar
        child: Container(
          height: 70.0,
          child: Row( //children inside bottom appbar
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  IconButton(
                    iconSize: 30.0,
                    icon: Icon(Icons.menu, color: Colors.black,),
                    splashColor: Colors.red,
                    onPressed: () {
                      setState(() {
                        selected=0;
                      });
                    },
                  ),
                  Text("Menu")
                ],
              ),
              Column(
                children: [
                  IconButton(
                    iconSize: 30.0,
                    icon: Icon(Icons.search, color: Colors.black,),
                    splashColor: Colors.yellow,
                    onPressed: () {
                      setState(() {
                        selected=1;
                      });
                    },
                  ),
                  Text("Search")
                ],
              ),
              Column(
                children: [
                  IconButton(
                    iconSize: 30.0,
                    icon: Icon(Icons.home, color: Colors.black,),
                    splashColor: Colors.blue,
                    onPressed: () {
                      setState(() {
                        selected=2;
                      });
                    },
                  ),
                  Text("Home")
                ],
              ),
              Column(
                children: [
                  IconButton(
                    iconSize: 30.0,
                    icon: Icon(Icons.people, color: Colors.black,),
                    splashColor: Colors.green,
                    onPressed: () {
                      setState(() {
                        selected=3;
                      });
                    },
                  ),
                  Text("People")
                ],
              ),

            ],
          ),
        ),
      ),
      body: (selected==0)?Tab1Example():(selected==1)?Tab2Example():(selected==2)?Tab3Example():DialNumber(),
    );
  }
}
