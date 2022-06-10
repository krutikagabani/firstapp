import 'package:flutter/material.dart';

class RadioButtonExample extends StatefulWidget {
  @override
  _RadioButtonExampleState createState() => _RadioButtonExampleState();
}

class _RadioButtonExampleState extends State<RadioButtonExample> {

  var gender="F";

  _handleRadio(val)
  {
    setState(() {
      gender=val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Radio button example"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("Male"),
            Radio(
              groupValue: gender,
              value: "M",
              onChanged:_handleRadio,
            ),
            Text("Female"),
            Radio(
              groupValue: gender,
              value: "F",
              onChanged:_handleRadio,
            ),
            RaisedButton(
              onPressed: (){
                print("Gender : "+gender);
              },
              child: Text("Submit"),
            )
          ],
        ),
      ),
    );
  }
}
