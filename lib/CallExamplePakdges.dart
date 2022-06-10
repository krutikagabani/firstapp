import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CallExamplePakdges extends StatefulWidget {

  @override
  State<CallExamplePakdges> createState() => _CallExamplePakdgesState();
}

class _CallExamplePakdgesState extends State<CallExamplePakdges> {
TextEditingController _number = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Call package of flutter"),
      ),
      body: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              Text("Enter the Number", style: TextStyle(fontSize: 25),),
              SizedBox(height: 20,),
              TextField(
                controller: _number,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.phone)
              ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                onPressed: (){
                  var num = _number.text.toString();
                  launch("tel://"+num);
                },
                child: Text("Call"),
              ),
          ],
      ),
    ),
    );
  }
}

