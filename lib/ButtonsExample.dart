import 'package:flutter/material.dart';

class ButtonsExample extends StatefulWidget {

  @override
  _ButtonsExampleState createState() => _ButtonsExampleState();
}

class _ButtonsExampleState extends State<ButtonsExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Buttons Example"),
      ),

      floatingActionButton: Container(
        height:100.0,
        child: FloatingActionButton.extended(
          label: Text("Add"),
          onPressed: (){},
          icon: Icon(Icons.message,color: Colors.white),
          shape: CircleBorder(
            side: BorderSide(
              width: 2.0,
              color: Colors.green,
            ),
          ),

          // shape: RoundedRectangleBorder(),
          // shape: BeveledRectangleBorder(
          //   borderRadius: BorderRadius.circular(12),
          // ),
        ),
      ),
       floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      // floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.message,color: Colors.white),
      //   onPressed: (){},
      //   splashColor: Colors.blue,
      //   backgroundColor: Colors.red,
      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(50.0),
          child: Column(
            children: [
              FlatButton(
                onPressed: (){
                  print("Flat Button Clicked");
                },
                color: Colors.blue,
                textColor: Colors.white,
                splashColor: Colors.red,
                child: Text("Flat Button"),
              ),
              SizedBox(height: 50.0),
              RaisedButton(
                onPressed: (){
                  print("Raised Button Clicked");
                },
                color: Colors.blue,
                textColor: Colors.white,
                splashColor: Colors.red,
                child: Text("Raised Button Button"),
              ),
              TextButton(
                onPressed: (){},
                child: Text("Text Button"),
              ),
              ElevatedButton(
                onPressed: (){},
                child: Text("Elevated Button"),
              ),
              InkWell(
                onTap: (){},
                child: Text("Ink Well"),
              ),
              OutlinedButton(
                onPressed: (){},
                child: Text("Outline Button"),
              ),
              IconButton(
                onPressed: (){},
                icon: Icon(Icons.add),
                iconSize: 60.0,
              ),
              GestureDetector(
                onTap: (){
                  print("Container Click");
                },
                child: Container(
                  height: 60.0,
                  width: 100.0,
                  color: Colors.red,
                ),
              ),
              GestureDetector(
                onTap: (){
                  print("Iamge Click");
                },
                child: Image.asset("img/plane.jpg",width: 150.0,height: 150.0,),
              ),
              FlatButton(
                onPressed: (){
                  print("Flat Button Clicked");
                },
                color: Colors.blue,
                textColor: Colors.white,
                splashColor: Colors.red,
                child: Text("Flat Button"),
              ),
              SizedBox(height: 50.0),
              RaisedButton(
                onPressed: (){
                  print("Raised Button Clicked");
                },
                color: Colors.blue,
                textColor: Colors.white,
                splashColor: Colors.red,
                child: Text("Raised Button Button"),
              ),
              TextButton(
                onPressed: (){},
                child: Text("Text Button"),
              ),
              ElevatedButton(
                onPressed: (){},
                child: Text("Elevated Button"),
              ),
              InkWell(
                onTap: (){},
                child: Text("Ink Well"),
              ),
              OutlinedButton(
                onPressed: (){},
                child: Text("Outline Button"),
              ),
              IconButton(
                onPressed: (){},
                icon: Icon(Icons.add),
                iconSize: 60.0,
              ),
              GestureDetector(
                onTap: (){
                  print("Container Click");
                },
                child: Container(
                  height: 60.0,
                  width: 100.0,
                  color: Colors.red,
                ),
              ),
              GestureDetector(
                onTap: (){
                  print("Iamge Click");
                },
                child: Image.asset("img/plane.jpg",width: 150.0,height: 150.0,),
              )
            ],
          ),
        ),
      ),
    );
  }
}
