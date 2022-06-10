import 'package:flutter/material.dart';

import 'ResultSecondScreen.dart';

class ResultFirstScreen extends StatefulWidget {

  @override
  _ResultFirstScreenState createState() => _ResultFirstScreenState();
}

class _ResultFirstScreenState extends State<ResultFirstScreen> {
  TextEditingController  _name = TextEditingController();
  TextEditingController  _rollno = TextEditingController();
  TextEditingController  _sub1 = TextEditingController();
  TextEditingController  _sub2 = TextEditingController();
  TextEditingController  _sub3 = TextEditingController();


  var formkey = GlobalKey<FormState>();

  var Name="";
  var Rollno="";
  var Sub1="";
  var Sub2="";
  var Sub3="";
  var total = "0";
  var Percentage = "0";
  // double total=0;
  // double percentage=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" This is first screen"),
      ),

      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Name", style: TextStyle(fontSize: 20),),
                SizedBox(height: 10.0,),
                TextFormField(
                  controller: _name,
                  keyboardType: TextInputType.text,
                  validator: (val)
                  {
                    if(val.length<=0)
                    {
                      return "Please Enter Name";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter the Text",
                    hintStyle:  TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                ),
                SizedBox(height: 20.0,),
                Text("Roll number", style: TextStyle(fontSize: 20),),
                SizedBox(height: 10.0,),
                TextFormField(
                  controller: _rollno,
                  keyboardType: TextInputType.number,
                  validator: (val)
                  {
                    if(val.length<=0)
                    {
                      return "Please Enter Mobile Number";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter your Roll no.",
                    hintStyle:  TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                ),
                SizedBox(height: 20.0,),
                Text("Math's", style: TextStyle(fontSize: 20),),
                SizedBox(height: 10.0,),
                TextFormField(
                  controller: _sub1,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter the Text",
                    hintStyle:  TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                ),
                SizedBox(height: 20.0,),
                Text("Science", style: TextStyle(fontSize: 20),),
                SizedBox(height: 10.0,),
                TextFormField(
                  controller: _sub2,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter the Text",
                    hintStyle:  TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                ),
                SizedBox(height: 20.0,),
                Text("English", style: TextStyle(fontSize: 20),),
                SizedBox(height: 10.0,),
                TextFormField(
                  controller: _sub3,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter the Text",
                    hintStyle:  TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                ),

                SizedBox(height: 20.0,),
                ElevatedButton(
                  onPressed: (){
                    if(formkey.currentState.validate());
                    {
                      var Name = _name.text.toString();
                      print("Name :" + Name);
                      var Roll = _rollno.text.toString();
                      print("Roll number :" + Roll);
                      var Subject1 = _sub1.text.toString();
                      print("subject1 :" + Subject1);
                      var Subject2 = _sub2.text.toString();
                      print("subject2 :" + Subject2);
                      var Subject3 = _sub3.text.toString();
                      print("subject3 :" + Subject3);
                      var Totalmarks = int.parse(_sub1.text) +
                          int.parse(_sub2.text) + int.parse(_sub3.text);
                      total = Totalmarks.toString();
                      print("Totalmarks :" + total);
                      var Percentage = Totalmarks/3;

                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => ResultSecondScreen(
                            name: Name,
                            rollno: Roll,
                            subject1: Subject1,
                            subject2: Subject2,
                            subject3: Subject3,
                            total: total.toString(),
                            percentage: Percentage.toString(),
                          ))
                      );
                    }
                  },
                  child: Text("Result",style: TextStyle(fontSize: 20),),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
