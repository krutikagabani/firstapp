import 'package:flutter/material.dart';

import 'SecondScreen.dart';

class AddSubMultiDiv extends StatefulWidget {

  @override
  _AddSubMultiDivState createState() => _AddSubMultiDivState();
}
class _AddSubMultiDivState extends State<AddSubMultiDiv> {
  TextEditingController _num1 = TextEditingController();
  TextEditingController _num2 = TextEditingController();
  var resulttext = "0";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AddSubMultiDiv"),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Number 1"),
              TextFormField(
                controller: _num1,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter the number",
                ),
              ),
              SizedBox(height :20.0,),
              Text("Number 2"),
              TextFormField(
                controller: _num2,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter the number",
                ),
              ),
              SizedBox(height: 20.0,),
              ElevatedButton(
                onPressed: (){
                  setState(() {
                    var result = int.parse(_num1.text) + int.parse(_num2.text);
                    resulttext = result.toString();
                    print("Result : "+resulttext);
                  });
               },
                child: Text("+", style: TextStyle(
                  fontSize: 30.0,
              ),),
              ),

             ElevatedButton(
                onPressed: (){
                  setState(() {
                    var result = int.parse(_num1.text) - int.parse(_num2.text);
                    resulttext = result.toString();
                    print("Result : "+resulttext);
                  });
                },
                child: Text("-", style: TextStyle(
                  fontSize: 30.0,
                ),),
              ),

              ElevatedButton(
                onPressed: (){
                  setState(() {
                    var result = int.parse(_num1.text) * int.parse(_num2.text);
                    resulttext = result.toString();
                    print("Result : "+resulttext);
                  });
                },
                child: Text("*", style: TextStyle(
                  fontSize: 30.0,
                ),),
              ),

              ElevatedButton(
                onPressed: (){
                  setState(() {
                    var result = int.parse(_num1.text) / int.parse(_num2.text);
                    resulttext = result.toString();
                    print("Result : "+resulttext);
                  });
                  // Navigator.of(context).push(
                  //     MaterialPageRoute(builder: (context) => SecondScreen())
                  // );
                },

                child: Text("/", style: TextStyle(
                  fontSize: 30.0,
                ),),
              ),
              SizedBox(height: 20.0,),
              Text("Result : "+resulttext, style: TextStyle(
                fontSize: 30.0,
              ),),
            ],
          ),
        ),
      ),
    );
  }
}
