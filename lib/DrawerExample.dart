import 'package:firstapp/ProductFirstScreen.dart';
import 'package:flutter/material.dart';

class DrawerExample extends StatefulWidget {

  @override
  State<DrawerExample> createState() => _DrawerExampleState();
}

class _DrawerExampleState extends State<DrawerExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer Example"),
        centerTitle: true,
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.search)),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart)),
        ],
      ),
      // drawer: Drawer(
      //   child: ListView(
      //     children: [
      //       UserAccountsDrawerHeader(
      //         currentAccountPicture: CircleAvatar(
      //           child: Text("G"),
      //         ),
      //         accountName: Text("Welcome, Guest!"),
      //         accountEmail: Text("test@gmail.com"),
      //       ),
      //       ListTile(
      //         leading: Icon(Icons.home),
      //         title: Text("Home"),
      //         trailing: Icon(Icons.arrow_forward_ios_rounded),
      //         onTap: (){
      //           Navigator.of(context).pop();
      //           Navigator.of(context).push(
      //             MaterialPageRoute(builder: (context)=>ProductFirstScreen())
      //           );
      //         },
      //       ),
      //       Divider(),
      //       ListTile(
      //         leading: Icon(Icons.home),
      //         title: Text("Home"),
      //         trailing: Icon(Icons.arrow_forward_ios_rounded),
      //         onTap: (){},
      //       ),
      //       Divider(),
      //       ListTile(
      //         leading: Icon(Icons.home),
      //         title: Text("Home"),
      //         trailing: Icon(Icons.arrow_forward_ios_rounded),
      //         onTap: (){},
      //       ),
      //       Divider(),
      //       ListTile(
      //         leading: Icon(Icons.home),
      //         title: Text("Home"),
      //         trailing: Icon(Icons.arrow_forward_ios_rounded),
      //         onTap: (){},
      //       ),
      //       Divider(),
      //       ListTile(
      //         leading: Icon(Icons.home),
      //         title: Text("Home"),
      //         trailing: Icon(Icons.arrow_forward_ios_rounded),
      //         onTap: (){},
      //       ),
      //       Divider(),
      //       ListTile(
      //         leading: Icon(Icons.home),
      //         title: Text("Home"),
      //         trailing: Icon(Icons.arrow_forward_ios_rounded),
      //         onTap: (){},
      //       ),
      //       Divider(),
      //       ListTile(
      //         leading: Icon(Icons.home),
      //         title: Text("Home"),
      //         trailing: Icon(Icons.arrow_forward_ios_rounded),
      //         onTap: (){},
      //       ),
      //       Divider(),
      //       ListTile(
      //         leading: Icon(Icons.home),
      //         title: Text("Home"),
      //         trailing: Icon(Icons.arrow_forward_ios_rounded),
      //         onTap: (){},
      //       ),
      //       Divider(),
      //       ListTile(
      //         leading: Icon(Icons.home),
      //         title: Text("Home"),
      //         trailing: Icon(Icons.arrow_forward_ios_rounded),
      //         onTap: (){},
      //       ),
      //       Divider(),
      //       ListTile(
      //         leading: Icon(Icons.home),
      //         title: Text("Home"),
      //         trailing: Icon(Icons.arrow_forward_ios_rounded),
      //         onTap: (){},
      //       ),
      //       Divider(),
      //       ListTile(
      //         leading: Icon(Icons.home),
      //         title: Text("Home"),
      //         trailing: Icon(Icons.arrow_forward_ios_rounded),
      //         onTap: (){},
      //       ),
      //       Divider(),
      //       ListTile(
      //         leading: Icon(Icons.home),
      //         title: Text("Home"),
      //         trailing: Icon(Icons.arrow_forward_ios_rounded),
      //         onTap: (){},
      //       ),
      //       Divider(),
      //       Container(
      //         margin: EdgeInsets.all(15.0),
      //         color: Colors.greenAccent,
      //         width: MediaQuery.of(context).size.width,
      //         height: 300,
      //         alignment: Alignment.center,
      //         child: Text("Help!",style: TextStyle(color: Colors.white,fontSize: 40.0)),
      //       )
      //     ],
      //   ),
      // ),
      body: Text("Drawer Example"),

    );
  }
}
