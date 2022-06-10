import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class EmailExamplePackeges extends StatefulWidget {

  @override
  State<EmailExamplePackeges> createState() => _EmailExamplePackegesState();
}

class _EmailExamplePackegesState extends State<EmailExamplePackeges> {
  TextEditingController _Email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Email package of flutter"),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            Text("Email Address", style: TextStyle(fontSize: 25),),
            SizedBox(height: 20,),
            TextField(
              controller: _Email,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.mail),
                hintText: "Enter the EmailAddress",
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: (){
                var email = _Email.text.toString();
                launch("mailto:"+email);
              },
              child: Text("Mail"),
            ),
          ],
        ),
      ),
    );
  }
}
