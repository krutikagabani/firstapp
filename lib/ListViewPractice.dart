import 'package:firstapp/ContainerExample.dart';
import 'package:flutter/material.dart';

class ListViewPractice extends StatefulWidget {

  @override
  _ListViewPracticeState createState() => _ListViewPracticeState();
}

class _ListViewPracticeState extends State<ListViewPractice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Whatsapp"),

        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search, size: 25.0,)),
          // IconButton(onPressed: (){}, icon: Icon(Icons.menu, size: 30.0,)),
          PopupMenuButton(
            color: Colors.white,
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 1,
                child: Text("New Group"),
              ),
              PopupMenuItem(
                value: 2,
                child: Text("New broadcast"),
              ),
              PopupMenuItem(
                value: 3,
                child: Text("Linked devices"),
              ),
              PopupMenuItem(
                value: 4,
                child: Text("Starred Messages"),
              ),
              PopupMenuItem(
                value: 5,
                child: Text("Payments"),
              ),
              PopupMenuItem(
                value: 6,
                child: Text("Settings"),
              ),
            ],
          ),
        ],

      ),

      floatingActionButton: Container(
      height: 60.0,
      child: FloatingActionButton.extended(
      onPressed: (){},
        label: Icon(Icons.message,color: Colors.white),

      shape: CircleBorder(
      side: BorderSide(
      width: 2.0,
      color: Colors.green,
      ),
      ),
    ),
      ),
    floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,

      body : ListView(
        children: [
        ListTile(
          leading: CircleAvatar(
            child: Text("K"),
          ),
          trailing: Text("10:10 AM"),
          title: Text("Karon Infotech"),
          subtitle: Text("Hi..."),
          onTap: (){

          },
        ),
          Divider(),
          ListTile(
            leading: CircleAvatar(
              child: Text("K"),
            ),
            trailing: Column(
              children: [
                Text("28/02/2022"),
                CircleAvatar(
                  child: Text("5"),

                ),
              ],
            ),
            title: Text("Kesar"),
            subtitle: Text("Hi..."),
            onTap: (){

            },
          ),
          Divider(),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.account_circle),
            ),
            trailing: Text("10:10 AM"),
            title: Text("Mansi"),
            subtitle: Text("Hi..."),
            onTap: (){

            },
          ),
          Divider(),
          ListTile(
            leading: CircleAvatar(
              child: Text("K"),
            ),
            trailing: Text("10:10 AM"),
            title: Text("Bhoomi"),
            subtitle: Text("Hi..."),
            onTap: (){

            },
          ),
          Divider(),
          ListTile(
            leading: CircleAvatar(
              child: Text("K"),
            ),
            trailing: Text("10:10 AM"),
            title: Text("Karon Infotech"),
            subtitle: Text("Hi..."),
            onTap: (){

            },
          ),
          Divider(),
          ListTile(
            leading: CircleAvatar(
              child: Text("K"),
            ),
            trailing: Text("10:10 AM"),
            title: Text("Karon Infotech"),
            subtitle: Text("Hi..."),
            onTap: (){

            },
          ),
          Divider(),
          ListTile(
            leading: CircleAvatar(
              child: Text("K"),
            ),
            trailing: Text("10:10 AM"),
            title: Text("Karon Infotech"),
            subtitle: Text("Hi..."),
            onTap: (){

            },
          ),
          Divider(),
          ListTile(
            leading: CircleAvatar(
              child: Text("K"),
            ),
            trailing: Text("10:10 AM"),
            title: Text("Karon Infotech"),
            subtitle: Text("Hi..."),
            onTap: (){

            },
          ),
          Divider(),
          ListTile(
            leading: CircleAvatar(
              child: Text("K"),
            ),
            trailing: Text("10:10 AM"),
            title: Text("Karon Infotech"),
            subtitle: Text("Hi..."),
            onTap: (){

            },
          ),
          Divider(),
          ListTile(
            leading: CircleAvatar(
              child: Text("K"),
            ),
            trailing: Text("10:10 AM"),
            title: Text("Karon Infotech"),
            subtitle: Text("Hi..."),
            onTap: (){

            },
          ),
          Divider(),
          ListTile(
            leading: CircleAvatar(
              child: Text("K"),
            ),
            trailing: Text("10:10 AM"),
            title: Text("Karon Infotech"),
            subtitle: Text("Hi..."),
            onTap: (){

            },
          ),
          Divider(),
          ListTile(
            leading: CircleAvatar(
              child: Text("K"),
            ),
            trailing: Text("10:10 AM"),
            title: Text("Karon Infotech"),
            subtitle: Text("Hi..."),
            onTap: (){

            },
          ),
          Divider(),
          ListTile(
            leading: CircleAvatar(
              child: Text("K"),
            ),
            trailing: Text("10:10 AM"),
            title: Text("Karon Infotech"),
            subtitle: Text("Hi..."),
            onTap: (){

            },
          ),

        ],
      ),
    );
  }
}
