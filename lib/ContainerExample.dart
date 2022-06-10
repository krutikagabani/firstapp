import 'package:flutter/material.dart';

class ContainerExample extends StatefulWidget {

  @override
  _ContainerExampleState createState() => _ContainerExampleState();
}

class _ContainerExampleState extends State<ContainerExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Container"),
        ),
      ),
      body: Center(
        child: Container(
          //width: MediaQuery.of(context).size.width/2,
          //height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(15.0),
            border: Border.all(color: Colors.blue,width: 5.0),
            boxShadow: [
              BoxShadow(color: Colors.yellow.shade100,offset: Offset(10.0,10.0))
            ]
          ),
          width: MediaQuery.of(context).size.width,
          height: 200.0,
          alignment: Alignment.topLeft,
          margin: EdgeInsets.all(50.0),
          padding: EdgeInsets.only(left: 50.0,top: 10.0),
          //margin: EdgeInsets.only(left: 60.0,right: 10.0),
          child: Text("Hello World!",style: TextStyle(color: Colors.white)),
          // child: Column(
          //   children: [
          //     Text("Hello World"),
          //     Text("Hello World"),
          //     Text("Hello World"),
          //   ],
          // ),
        ),
      ),
    );
  }
}
