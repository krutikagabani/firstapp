import 'package:flutter/material.dart';


class ShareTextExamplePackages extends StatefulWidget {

  @override
  State<ShareTextExamplePackages> createState() => _ShareTextExamplePackagesState();
}

class _ShareTextExamplePackagesState extends State<ShareTextExamplePackages> {
  TextEditingController _shareto = TextEditingController();
  var Share="";
  String text = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Call package of flutter"),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            Text("Enter the Text", style: TextStyle(fontSize: 25),),
            SizedBox(height: 20,),
            TextField(
              controller: _shareto,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.share)
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  text = Share;
                  // _onShareWithEmptyOrigin(BuildContext context) async {
                  //   await Share.share("text");
                  // }
                });
              },
              child: Text("Share"),
            ),
          ],
        ),
      ),
    );
  }
}




