import 'package:firstapp/DialNumber.dart';
import 'package:firstapp/DropDownPractice.dart';
import 'package:firstapp/DropdownExample.dart';
import 'package:firstapp/GridViewExample.dart';
import 'package:firstapp/ListViewPractice.dart';
import 'package:firstapp/MxPlayer.dart';
import 'package:firstapp/TextFieldPractice.dart';
import 'package:flutter/material.dart';

class DrawerPractice extends StatefulWidget {

  @override
  State<DrawerPractice> createState() => _DrawerPracticeState();
}

class _DrawerPracticeState extends State<DrawerPractice> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer Example"),
        // leading:IconButton(onPressed: (){}, icon: Icon(Icons.search)),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search, size: 25.0,)),
          // IconButton(onPressed: (){}, icon: Icon(Icons.menu, size: 30.0,)),
          PopupMenuButton(
            // onSelected: Navigator.of(context).push(
            //   MaterialPageRoute(builder: (context) => MxPlayer())
            // ),
            onSelected: (value)
            {
              if(value==1)
                {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => MxPlayer())
                  );
                }
              else if(value==2)
                {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => DropDownPractice())
                  );
                }
              else if(value==3)
              {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ListViewPractice())
                );
              }
              else if(value==4)
              {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => TextFieldPractice())
                );
              }
              else if(value==5)
              {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => DialNumber())
                );
              }
              else if(value==6)
              {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => GridViewExample())
                );
              }

            },
            color: Colors.white,
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 1,
                child: Text("MxPlayer"),
              ),
              PopupMenuItem(
                value: 2,
                child: Text("Dropdown"),
              ),
              PopupMenuItem(
                value: 3,
                child: Text("Whatsapp"),
              ),
              PopupMenuItem(
                value: 4,
                child: Text("Text Form field"),
              ),
              PopupMenuItem(
                value: 5,
                child: Text("Dial the Number"),
              ),
              PopupMenuItem(
                value: 6,
                child: Text("Gridview"),
              ),

            ],

          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                    currentAccountPicture: CircleAvatar(
                      child: Text("K", style: TextStyle(fontSize: 30.0),),
                   ),
                   accountName: Text("Kesar Gabani",style: TextStyle(fontSize: 20),),
                   accountEmail: Text("kesar1234@gmail.com",style: TextStyle(fontSize: 15),),
                 ),

            ListTile
              (
                  leading: Icon(Icons.library_music_sharp, size: 30.0,),
                  title: Text("MxPlayer page", style: TextStyle(fontSize: 20.0),),
                  trailing: Icon(Icons.double_arrow_outlined, size: 25.0,),
                  onTap: (){
                    Navigator.of(context).pop();
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context)=>MxPlayer())
                    );
                  },
            ),
            Divider(),

            ListTile
              (
              leading: Icon(Icons.arrow_drop_down_circle_sharp, size: 30.0,),
              title: Text("Dropdown page", style: TextStyle(fontSize: 20.0),),
              trailing: Icon(Icons.double_arrow_outlined, size: 25.0,),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=>DropDownPractice())
                );
              },
            ),
            Divider(),

            ListTile
              (
              leading: Icon(Icons.perm_phone_msg, size: 30.0,),
              title: Text("Whatsapp page", style: TextStyle(fontSize: 20.0),),
              trailing: Icon(Icons.double_arrow_outlined, size: 25.0,),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=>ListViewPractice())
                );
              },
            ),
            Divider(),

            ListTile
              (
              leading: Icon(Icons.format_align_center, size: 30.0,),
              title: Text("Fillup the form", style: TextStyle(fontSize: 20.0),),
              trailing: Icon(Icons.double_arrow_outlined, size: 25.0,),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=>TextFieldPractice())
                );
              },
            ),
            Divider(),

            ListTile
              (
              leading: Icon(Icons.phone_rounded, size: 30.0,),
              title: Text("Dial the number", style: TextStyle(fontSize: 20.0),),
              trailing: Icon(Icons.double_arrow_outlined, size: 25.0,),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=>DialNumber())
                );
              },
            ),
            Divider(),

            ListTile
              (
              leading: Icon(Icons.grid_view, size: 30.0,),
              title: Text("GridView page", style: TextStyle(fontSize: 20.0),),
              trailing: Icon(Icons.double_arrow_outlined, size: 25.0,),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=>GridViewExample())
                );
              },
            ),
            Divider(),
          ],
        ),
      ),

      body: Center(
        child: Text("This is drawer Example", style: TextStyle(fontSize: 25.0),),
      ),
    );
  }
}
