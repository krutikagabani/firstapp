import 'package:firstapp/SecondScreen.dart';
import 'package:flutter/material.dart';

class TextRedirectScreen extends StatefulWidget {


  @override
  _TextRedirectScreenState createState() => _TextRedirectScreenState();
}

class _TextRedirectScreenState extends State<TextRedirectScreen> {


  TextEditingController  _n1 = TextEditingController();
  TextEditingController  _n2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("This is first screen"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Text1", style: TextStyle(fontSize: 20),),
              SizedBox(height: 10.0,),
              TextField(
                controller: _n1,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter the Text",
                  hintStyle:  TextStyle(
                    fontSize: 18.0,
                  ),
                ),
              ),
              SizedBox(height: 20.0,),
              Text("Text2", style: TextStyle(fontSize: 20),),
              SizedBox(height: 10.0,),
              TextField(
                controller: _n2,
                keyboardType: TextInputType.text,
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

                  var number1 = _n1.text.toString();
                  var number2 = _n2.text.toString();

                  //print("Number 1 :"+number1);

                  // setState(() {
                  //   title="XYZ";
                  // });
                  // print("Title : "+title);
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => SecondScreen(text1: number1,text2: number2,))
                  );
                },
                child: Text("Submit", style: TextStyle(fontSize: 18),),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
