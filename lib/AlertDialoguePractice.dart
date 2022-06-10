import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertDialoguePractice extends StatefulWidget {
  @override
  State<AlertDialoguePractice> createState() => _AlertDialoguePracticeState();
}

class _AlertDialoguePracticeState extends State<AlertDialoguePractice> {
  bool _password = true;

  _createDialog() {
    AlertDialog alert = AlertDialog(
      content: Container(
        width: MediaQuery.of(context).size.width / 2,
        height: MediaQuery.of(context).size.height / 2.7,
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email or Username',
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              obscureText: _password,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
                suffixIcon: IconButton(
                  icon: Icon(
                    _password ? Icons.visibility : Icons.visibility_off,
                    color: Theme.of(context).primaryColorDark,
                  ),
                  onPressed: () {
                    setState(() {
                      _password = !_password;
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: MediaQuery.of(context).size.width/3,
              child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Log in")
              ),
            ),
            SizedBox(width: 5,),
            Container(
              width: MediaQuery.of(context).size.width/3,
              child : ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("Cancel")
              ),
            ),
          ],
        ),
      ],
    );

    showDialog(
        context: context,
        builder: (context) {
          return alert;
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Log in page"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _createDialog();
          },
          child: Text("Log into exising accont"),
        ),
      ),
    );
  }
}
