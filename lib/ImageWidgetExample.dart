import 'package:flutter/material.dart';

class ImageWidgetExample extends StatefulWidget {

  @override
  _ImageWidgetExampleState createState() => _ImageWidgetExampleState();
}

class _ImageWidgetExampleState extends State<ImageWidgetExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Images"),
      ),
      body: Column(

        children: [
          Icon(Icons.add_a_photo_rounded,color: Colors.red,size: 100.0,),
          Image.asset("img/plane.jpg",width: 150.0,height: 150.0,),
          //Image.network("https://i.ytimg.com/vi/iDZhOvjrO6I/maxresdefault.jpg"),
          FadeInImage.assetNetwork(placeholder: "img/plane.jpg", image: "https://image.shutterstock.com/image-photo/activated-emergency-slide-on-plane-260nw-134480813.jpg")
        ],
      ),
    );
  }
}
