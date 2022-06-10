import 'package:flutter/material.dart';

class DropDownPractice extends StatefulWidget {


  @override
  _DropDownPracticeState createState() => _DropDownPracticeState();
}

class _DropDownPracticeState extends State<DropDownPractice> {
  TextEditingController _num1 = TextEditingController();
  TextEditingController _num2 = TextEditingController();

  var result = "0";
  var select="plus";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AddMutiSubDiv by dropdown"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Number 1"),
              SizedBox(height :10.0,),
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
              SizedBox(height :10.0,),
              TextFormField(
                controller: _num2,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter the number",
                ),
              ),
          DropdownButton(
            value: select,
            onChanged: (val)
            {
              // print("val : "+val);
              setState(() {
                select=val;
              });
            },
            items: [
              DropdownMenuItem(
                child: Text("+", style: TextStyle(fontSize: 25),),
                value: "plus",
              ),
              DropdownMenuItem(
                child: Text("-", style: TextStyle(fontSize: 30),),
                value: "minus",
              ),
              DropdownMenuItem(
                child: Text("*", style: TextStyle(fontSize: 25),),
                value: "multi",
              ),
              DropdownMenuItem(
                child: Text("/", style: TextStyle(fontSize: 25),),
                value: "div",
              ),
            ],
          ),

              SizedBox(height: 25.0,),
              RaisedButton(
                onPressed: (){
                  setState(() {
                    if(select=="plus") {
                      var plustext = int.parse(_num1.text) + int.parse(_num2
                          .text);
                      result =  plustext.toString();
                      print("Result : " +result);

                    }
                    else if(select=="minus")
                    {
                      var minustext = int.parse(_num1.text) -
                          int.parse(_num2.text);
                      result = minustext.toString();
                      print("Result : " +result);
                    }
                    else if(select=="multi") {
                      var multitext = int.parse(_num1.text) * int.parse(
                          _num2.text);
                      result = multitext.toString();
                      print("Result : " +result);
                    }
                    else if(select=="div") {
                      var divtext = int.parse(_num1.text) / int.parse(
                          _num2.text);
                      result = divtext.toString();
                      print("Result : " +result);

                    }
                  });

                },
                color: Colors.blueAccent,
                textColor: Colors.white,
                child: Text("Submit"),
              ),
              SizedBox(height: 20.0,),
              Text("Answer :" +result),
          ],
        ),
      ),
      ),
    );
  }
}
