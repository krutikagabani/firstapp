import 'package:flutter/material.dart';

class ImgCard extends StatefulWidget {


  @override
  _ImgCardState createState() => _ImgCardState();
}

class _ImgCardState extends State<ImgCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("img widget"),
      ),
      body: Center(
        child: Container(
          width: 200.0,
          child: Card(
            child:  Image.asset("img/plane.jpg",width: 150.0,height: 150.0,),
        ),
      ),
      ),
    );
  }
}
