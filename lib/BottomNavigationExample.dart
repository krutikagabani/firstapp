import 'package:firstapp/DialNumber.dart';
import 'package:flutter/material.dart';

import 'Tab1Example.dart';
import 'Tab2Example.dart';
import 'Tab3Example.dart';

class BottomNavigationExample extends StatefulWidget {
  @override
  _BottomNavigationExampleState createState() =>
      _BottomNavigationExampleState();
}

class _BottomNavigationExampleState extends State<BottomNavigationExample> {
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
        onPressed: () {
          //code to execute on button press
        },
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

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selected,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black54,
        type: BottomNavigationBarType.fixed,

        elevation: 30,
        // backgroundColor: Colors.yellow.shade200,
        onTap: (index) {
          setState(() {
            selected = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box_outlined), label: "About"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_rounded), label: "Account"),
          BottomNavigationBarItem(icon: Icon(Icons.phone), label: "Contact"),
        ],
      ),

      // body: (selected==0)?Tab1Example():(selected==1)?Tab2Example():(selected==2)?Tab3Example():DialNumber(),
      body: Container(
        height: 1500,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("MODAL BOTTOM SHEET EXAMPLE"),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Column(
                        // mainAxisSize: MainAxisSize.min,
                        children: [
                          ElevatedButton(
                            child: Text("Close botton sheet"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                          ListTile(
                            leading: Icon(Icons.photo),
                            title: Text('Photo'),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            leading: Icon(Icons.music_note),
                            title: Text('Music'),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            leading: Icon(Icons.videocam),
                            title: Text('Video'),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            leading: Icon(Icons.share),
                            title: Text('Share'),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      );
                    });
              },
              padding:
                  EdgeInsets.only(left: 30, right: 30, top: 15, bottom: 15),
              color: (selected == 0)
                  ? Colors.red
                  : (selected == 1)
                      ? Colors.amber
                      : (selected == 2)
                          ? Colors.blue
                          : Colors.green,
              child: Text(
                'Click Me',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.6),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// body: SingleChildScrollView(
//   child: Column(
//      children: [
//        (selected==0)?Text("Item 1"):Visibility(child: Text("demo"),visible: false,),
//        (selected==1)?Text("Item 2"):Visibility(child: Text("demo"),visible: false,),
//        (selected==2)?Text("Item 3"):Visibility(child: Text("demo"),visible: false,),
//      ],
//   ),
// ),
