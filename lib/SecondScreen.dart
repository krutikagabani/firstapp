import 'package:firstapp/TextRedirectScreen.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {


  var text1="";
  var text2="";

  SecondScreen({this.text1,this.text2}); // constrctor

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Redirect to this Second screen"),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.text1),
              Text(widget.text2),
              ElevatedButton(
                onPressed: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=>TextRedirectScreen())
                  );
                },
                child: Text("Back"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
