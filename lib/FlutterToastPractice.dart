import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class FlutterToastPractice extends StatefulWidget {

  @override
  State<FlutterToastPractice> createState() => _FlutterToastPracticeState();
}

class _FlutterToastPracticeState extends State<FlutterToastPractice> {

  void show()
  {

    Fluttertoast.showToast(
        msg: "This is Center Short Toast",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red.shade400,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Toast"),
      ),
      body: Center(
       child: Container(
         height: 80,
         width: 180,
         child: ElevatedButton(
           onPressed:(){
             show();
           },
           child:  Text("Result",style: TextStyle(fontSize: 30.0),),
         ),
       ),
      ),

    );
  }
}
