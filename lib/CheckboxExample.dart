import 'package:flutter/material.dart';

class CheckboxExample extends StatefulWidget {

  @override
  _CheckboxExampleState createState() => _CheckboxExampleState();
}

class _CheckboxExampleState extends State<CheckboxExample> {
  var ch1=false,ch2=true; //boolean
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Checkbox Example"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Checkbox(
              value: ch1,
              activeColor: Colors.red,
              onChanged: (val)
              {
                print(val);
                setState(() {
                  ch1=val;
                });
              },
            ),
            Checkbox(
              value: ch2,
              onChanged: (val)
              {
                print(val);
                setState(() {
                  ch2=val;
                });
              },
            ),
            RaisedButton(
              onPressed: (){
                if(ch1)
                  {
                    print("Checkbox 1 is checked");
                  }
                else
                  {
                    print("checkbox 1 in unchecked");
                  }
                // print("Checkbox 1 "+ch1.toString());
                // print("Checkbox 2 "+ch2.toString());
              },
              child: Text("Submit"),
            )
          ],
        ),
      ),
    );
  }
}
