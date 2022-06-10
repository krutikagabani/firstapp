import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldExample extends StatefulWidget {


  @override
  _TextFieldExampleState createState() => _TextFieldExampleState();
}

class _TextFieldExampleState extends State<TextFieldExample> {

  TextEditingController _name = TextEditingController();
  TextEditingController _mobile = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Textfield Example"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Name"),
              TextField(
                controller: _name,
                keyboardType: TextInputType.text,
              ),
              SizedBox(height: 20.0,),
              Text("Mobile Number"),
              TextField(
                controller: _mobile,
                keyboardType: TextInputType.phone,
              ),
              SizedBox(height: 20.0,),
              Text("Email"),
              TextField(
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 20.0,),
              Text("Password"),
              TextField(
                keyboardType: TextInputType.text,
                obscureText: true,
              ),
              SizedBox(height: 20.0,),
              Text("Age"),
              TextField(
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 20.0,),
              ElevatedButton(
                onPressed: (){
                  //textfield research
                  //square
                  //rounded border
                  //textfield icon
                  //textfield multiline
                  //active line inactive border color
                  var name = _name.text.toString();
                  print("Name : "+name);
                },
                child: Text("Submit"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
