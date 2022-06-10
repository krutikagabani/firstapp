import 'package:flutter/material.dart';

class TextFieldPractice extends StatefulWidget {


  @override
  _TextFieldPracticeState createState() => _TextFieldPracticeState();
}

class _TextFieldPracticeState extends State<TextFieldPractice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Textfield practice"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text("Name"),
                TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.red, width: 0.0),
                    ),
                    hintText: "Enter your name",
                  ),
                ),
                  SizedBox(height: 20.0,),
                Text("Email"),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      icon: Icon(Icons.email)
                  ),
                ),
                  SizedBox(height: 20.0,),
                  Text("Email"),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),

                      ),

                        prefixIcon: Icon(Icons.email,color: Colors.amberAccent,)
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  Text("Contact number"),
                  TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                        suffixIcon: Icon(Icons.phone)
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  Text("Text"),
                  TextField(
                    keyboardType: TextInputType.text,
                    maxLines: null,
                    minLines: 5,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter your Address",
                      focusedBorder:OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.green, width: 2.0),
                      ),

                    ),
                  )

                ]
            ),
        ),
      ),
    );
  }
}
