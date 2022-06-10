import 'package:firstapp/HorizontalListView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MxPlayer extends StatefulWidget {
  @override
  _MxPlayerState createState() => _MxPlayerState();
}

class _MxPlayerState extends State<MxPlayer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MxPlayer Example"),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 300.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.all(10.0),
                  decoration: new BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: new DecorationImage(
                          image: new AssetImage("img/flowergarden1.jpg"),
                          fit: BoxFit.fill)),
                ),
                Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.all(10.0),
                  decoration: new BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: new DecorationImage(
                          image: new AssetImage("img/flowergarden2.jpg"),
                          fit: BoxFit.fill)),
                ),
                Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.all(10.0),
                  decoration: new BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: new DecorationImage(
                          image: new AssetImage("img/flowergarden3.jpg"),
                          fit: BoxFit.fill)),
                ),
                Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.all(10.0),
                  decoration: new BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: new DecorationImage(
                          image: new AssetImage("img/flowergarden4.jpg"),
                          fit: BoxFit.fill)),
                ),

                // GestureDetector(
                //     onTap: (){
                //        Navigator.of(context).push(
                //          MaterialPageRoute(builder: (context)=>HorizontalListView())
                //        );
                //     },
                //     child: Container(
                //       height: 250.0,
                //       width:  MediaQuery.of(context).size.width,
                //       child: Image.asset("img/flowergarden1.jpg", height: 250.0),
                //       color: Colors.red,
                //       margin: EdgeInsets.all(15.0),
                //     ),
                //   ),
              ],
            ),
          ),
          
         Padding(
           padding: const EdgeInsets.all(10.0),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Text("Trending shows",style: TextStyle(fontSize: 20.0),),
               Text("SEE MORE",style: TextStyle(fontSize: 13.0 , color: Colors.blue),),
             ],
           ),
         ),

          Container(
            width: MediaQuery.of(context).size.width,
            height: 220.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  height: 200,
                  width: 150,
                  margin: EdgeInsets.all(10.0),
                  decoration: new BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: new DecorationImage(
                          image: new AssetImage("img/flowergarden1.jpg"),
                          fit: BoxFit.fill)),
                ),
                Container(
                  height: 200,
                  width: 150,
                  margin: EdgeInsets.all(10.0),
                  decoration: new BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: new DecorationImage(
                          image: new AssetImage("img/flowergarden2.jpg"),
                          fit: BoxFit.fill)),
                ),
                Container(
                  height: 250,
                  width: 150,
                  margin: EdgeInsets.all(10.0),
                  decoration: new BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: new DecorationImage(
                          image: new AssetImage("img/flowergarden3.jpg"),
                          fit: BoxFit.fill)),
                ),
                Container(
                  height: 250,
                  width: 150,
                  margin: EdgeInsets.all(10.0),
                  decoration: new BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: new DecorationImage(
                          image: new AssetImage("img/flowergarden4.jpg"),
                          fit: BoxFit.fill)),
                ),
                Container(
                  height: 250,
                  width: 150,
                  margin: EdgeInsets.all(10.0),
                  decoration: new BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: new DecorationImage(
                          image: new AssetImage("img/flowergarden2.jpg"),
                          fit: BoxFit.fill)),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Top 10 This Week",style: TextStyle(fontSize: 20.0),),
              ],
            ),
          ),

          Container(
            width: MediaQuery.of(context).size.width,
            height: 180.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  height: 200,
                  width: 200,
                  margin: EdgeInsets.all(10.0),
                  decoration: new BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: new DecorationImage(
                          image: new AssetImage("img/flowergarden4.jpg"),
                          fit: BoxFit.fill)),
                ),
                Container(
                  height: 200,
                  width: 200,
                  margin: EdgeInsets.all(10.0),
                  decoration: new BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: new DecorationImage(
                          image: new AssetImage("img/flowergarden3.jpg"),
                          fit: BoxFit.fill)),
                ),
                Container(
                  height: 250,
                  width: 200,
                  margin: EdgeInsets.all(10.0),
                  decoration: new BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: new DecorationImage(
                          image: new AssetImage("img/flowergarden1.jpg"),
                          fit: BoxFit.fill)),
                ),
                Container(
                  height: 200,
                  width: 200,
                  margin: EdgeInsets.all(10.0),
                  decoration: new BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: new DecorationImage(
                          image: new AssetImage("img/flowergarden2.jpg"),
                          fit: BoxFit.fill)),
                ),
                Container(
                  height: 250,
                  width: 200,
                  margin: EdgeInsets.all(10.0),
                  decoration: new BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: new DecorationImage(
                          image: new AssetImage("img/flowergarden4.jpg"),
                          fit: BoxFit.fill)),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
