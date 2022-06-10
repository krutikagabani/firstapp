import 'package:flutter/material.dart';

class DropdownExample extends StatefulWidget {


  @override
  _DropdownExampleState createState() => _DropdownExampleState();
}

class _DropdownExampleState extends State<DropdownExample> {

  var select="i1";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dropdown Example"),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
        //     <select>
        // <option>ABC</option>
        // <option>ABC</option>
        //   <option>ABC</option>
        //   <option>ABC</option>
        // <option>ABC</option>
        // </select>
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
                  child: Text("Item 1"),
                  value: "i1",
                ),
                DropdownMenuItem(
                  child: Text("Item 2"),
                  value: "i2",
                ),
                DropdownMenuItem(
                  child: Text("Item 3"),
                  value: "i3",
                ),
                DropdownMenuItem(
                  child: Text("Item 4"),
                  value: "i4",
                ),
                DropdownMenuItem(
                  child: Text("Item 5"),
                  value: "i5",
                ),
              ],
            ),
            RaisedButton(
              onPressed: (){
                print("Value :" +select);
              },
              child: Text("Submit"),
            )
          ],
        ),
      ),
    );
  }
}
