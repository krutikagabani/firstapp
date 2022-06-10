import 'package:flutter/material.dart';

class AlertDialogExample extends StatefulWidget {

  @override
  _AlertDialogExampleState createState() => _AlertDialogExampleState();
}

class _AlertDialogExampleState extends State<AlertDialogExample> {

  _createDialog()
  {
    AlertDialog alert = AlertDialog(
      title: Text("Warinig!"),
      content: Text("Are you sure?"),
      contentPadding: EdgeInsets.all(15.0),
      actions: [
        ElevatedButton(onPressed: (){}, child: Text("Yes")),
        ElevatedButton(onPressed: (){
          Navigator.of(context).pop();
        }, child: Text("No")),
      ],
    );

    showDialog(context: context, builder: (context){
      return alert;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Dialog"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            _createDialog();
          },
          child: Text("Show"),
        ),
      ),
    );
  }


}
