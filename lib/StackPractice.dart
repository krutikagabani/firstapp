import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StackPractice extends StatefulWidget {

  @override
  State<StackPractice> createState() => _StackPracticeState();
}

class _StackPracticeState extends State<StackPractice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFe8dfd8),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(63.0),
        child: AppBar(
          backgroundColor: Color(0xFF128C7E),
          leading: IconButton(
            padding: EdgeInsets.zero,
            icon : Icon(Icons.arrow_back, color: Colors.white,),
            onPressed: (){},
          ),

          titleSpacing: 0,
          title: ListTile(
            contentPadding: EdgeInsets.all(0),
            leading: CircleAvatar(
              // child: Image.asset("img/flowergarden4.jpg"),
              child: Icon(Icons.account_circle_rounded),
              backgroundColor: Colors.deepOrangeAccent,
            ),

            title: Text("Stack Practice", style: TextStyle(color: Colors.white, fontSize: 18),),
            subtitle: Text("tap here for group info", style: TextStyle(color: Colors.white),),
          ),
          // title: Text("Stack Example"),
          actions: [
            IconButton(
                onPressed: (){},
                icon: Icon(Icons.video_call_sharp, size: 30.0,)
            ),
            IconButton(
                onPressed: (){},
                icon: Icon(Icons.phone, size: 23.0,)
            ),
            PopupMenuButton(
              color: Colors.white,
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: 1,
                  child: Text("Group info"),
                ),
                PopupMenuItem(
                  value: 2,
                  child: Text("Group media"),
                ),
                PopupMenuItem(
                  value: 3,
                  child: Text("Search"),
                ),
                PopupMenuItem(
                  value: 4,
                  child: Text("Mute notifications"),
                ),
                PopupMenuItem(
                  value: 5,
                  child: Text("Wallpaper"),
                ),
                PopupMenuItem(
                  value: 6,
                  child: Text("More"),
                ),
              ],
            ),
          ],
        ),
      ),
     
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          




          Positioned(
            bottom: 10.0,
            left: 10.0,
            right: 70.0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
              ),
              height: 50.0,
              child: TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    prefixIcon: Icon(Icons.tag_faces_outlined,color: Colors.black45,size: 25,),
                    hintText: "Message",
                    hintStyle: TextStyle(fontSize: 18),
                    suffixIcon: Container(
                      width: 150,
                      child: Row(
                        children: [
                          IconButton(
                              icon: Icon(Icons.attach_file_outlined,color: Colors.black45,),
                              onPressed: (){}
                          ),
                          IconButton(
                              icon: Icon(Icons.attach_money_outlined,color: Colors.black45,),
                              onPressed: (){}
                          ),
                          IconButton(
                              icon: Icon(Icons.camera_alt,color: Colors.black45,),
                              onPressed: (){}
                          ),
                        ],
                      ),
                    ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 10.0,
            right: 10.0,
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xFF128C7E),
                borderRadius: BorderRadius.circular(50),
              ),
              width: 50.0,
              height: 50.0,
              child: IconButton(
                  icon: Icon(Icons.mic,
                    color: Colors.white,
                    size:30,
                  ),
                  onPressed: (){},
              ),
              ),
            ),

          Positioned(
            top:0,
            bottom: 70,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: ListView(
                children: [
                  Card(
                    child: Image.asset("img/flowergarden4.jpg"),
                  ),
                  Card(
                    child: Image.asset("img/flowergarden3.jpg"),
                  ),
                  Card(
                    child: Image.asset("img/flowergarden2.jpg"),
                  ),
                  Card(
                    child: Image.asset("img/flowergarden1.jpg"),
                  ),
                  Card(
                    child: Image.asset("img/plane.jpg"),
                  ),
                ],
              ),
            ),

          ),
        ],
      ),
    );
  }
}
