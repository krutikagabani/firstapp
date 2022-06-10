
import 'package:firstapp/HomeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewHomeScreen extends StatefulWidget
{
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<NewHomeScreen>
{
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("This is another screen.."),
        ),

        // body: Column(
        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //   children: [
        //     Text("Item 1"),
        //     Row(
        //       children: [
        //         Text("Row 1"),
        //         Text("Row 2"),
        //         Column(
        //           children: [
        //             Text("Col 1"),
        //             Text("Col 2"),
        //           ],
        //         )
        //       ],
        //     ),
        //     Text("Item 3"),
        //   ],
        // ),
        // body: Column(
        //   children: [
        //     Text("This is another Home Screen"),
        //     Text("This is another Home Screen"),
        //     Text("This is another Home Screen"),
        //     Text("This is another Home Screen"),
        //     Text("This is another Home Screen"),
        //     Text("This is another Home Screen"),
        //   ],
        // ),
        // body: Center(
        //   child: Text("This is another Home Screen"),
        // ),
      );
  }

}

