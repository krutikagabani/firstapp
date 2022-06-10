import 'package:flutter/material.dart';

class TextFormfieldExample extends StatefulWidget {

  @override
  _TextFoemfieldExampleState createState() => _TextFoemfieldExampleState();
}

class _TextFoemfieldExampleState extends State<TextFormfieldExample> {
  TextEditingController _name = TextEditingController();
  TextEditingController _mobile = TextEditingController();

  var formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Formfield example"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Name"),
                TextFormField(
                  controller: _name,
                  keyboardType: TextInputType.text,
                  validator: (val)
                  {
                    if(val.length<=0)
                      {
                        return "Please Enter Name";
                      }
                    return null;
                  },
                ),
                SizedBox(height: 20.0,),
                Text("Mobile Number"),
                TextFormField(
                  controller: _mobile,
                  keyboardType: TextInputType.phone,
                  validator: (val)
                  {
                    if(val.length<=0)
                    {
                      return "Please Enter Mobile Number";
                    }
                    else if(val.length!=10)
                      {
                        return "Please Enter valid Mobile Number";
                      }
                    return null;
                  },
                ),
                SizedBox(height: 20.0,),
                ElevatedButton(
                  onPressed: ()
                  {
                     if(formkey.currentState.validate());
                       {
                         var name = _name.text.toString();
                         print("Name : "+name);
                       }
                  },
                  child: Text("Submit"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
