import 'package:flutter/material.dart';

import 'ResultFirstScreen.dart';

class ResultSecondScreen extends StatefulWidget {

  var name="";
  var rollno="";
  var subject1="";
  var subject2="";
  var subject3="";
  var total="";
  var percentage="";


  ResultSecondScreen({
    this.name,
    this.rollno,
    this.subject1,
    this.subject2,
    this.subject3,
    this.total,
    this.percentage
  });

  @override
  _ResultSecondScreenState createState() => _ResultSecondScreenState();
}

class _ResultSecondScreenState extends State<ResultSecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("This is second screen"),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Container(
            width: 800.0,
            height: 600.0,
            decoration: BoxDecoration(
              color: Colors.orange,
            ),
            child : Card(
              color: Colors.yellow.shade100,
              elevation: 15.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20.0,),
                  Text("Name : "+ widget.name, style: TextStyle(fontSize: 25.0),),
                  Divider(
                    height: 50,
                    thickness: 5,
                  ),
                  Text("Roll number :"+ widget.rollno, style: TextStyle(fontSize: 25.0),),
                  Divider(
                    height: 50,
                    thickness: 5,
                  ),
                  Text("Math's :"+ widget.subject1, style: TextStyle(fontSize: 25.0),),
                  Divider(
                    height: 50,
                    thickness: 5,
                  ),
                  Text("Science :"+ widget.subject2, style: TextStyle(fontSize: 25.0),),
                  Divider(
                    height: 50,
                    thickness: 5,
                  ),
                  Text("English :"+ widget.subject3, style: TextStyle(fontSize: 25.0),),
                  Divider(
                    height: 50,
                    thickness: 5,
                  ),
                  Text("Total Marks :"+ widget.total, style: TextStyle(fontSize: 25.0),),
                  Divider(
                    height: 50,
                    thickness: 5,
                  ),
                  Text("Percentage :"+ widget.percentage,  style: TextStyle(fontSize: 25.0),),

              ]
              ),
            ),
          ),
        ),
      ),
    );
  }
}
