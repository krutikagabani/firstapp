import 'package:firstapp/Tab1Example.dart';
import 'package:firstapp/Tab2Example.dart';
import 'package:firstapp/Tab3Example.dart';
import 'package:flutter/material.dart';

class TabExample extends StatefulWidget {
  @override
  State<TabExample> createState() => _TabExampleState();
}

class _TabExampleState extends State<TabExample>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  var position = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(vsync: this, length: 3);
    _tabController.addListener(getTabIndex);
  }

  // if(i<=10)
  // {
  //   nsd nf
  // sdf
  // sdf
  // sdf
  // }
  // else
  // {
  //   sdfs
  // sdf
  // sfd
  // sdf
  // }
  //
  // //ternary operator
  // (i<=10)?,dfg,sfdg,dfg,dfg:sfdgdthg

  getTabIndex() {
    var index = _tabController.index;
    setState(() {
      position = index;
    });
  }

  @override
  void dispose() {
    _tabController.removeListener(getTabIndex);
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          // backgroundColor: (position==0)?Colors.red:(position==1)?Colors.blue:Colors.purple,
          title: Text("Whatsapp"),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  size: 25.0,
                )),

            (position == 0)
                ? PopupMenuButton(
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
                  )
                :(position == 1)
                    ? PopupMenuButton(
                        itemBuilder: (context) => [
                          PopupMenuItem(
                            value: 1,
                            child: Text("Status Privacy"),
                          ),
                          PopupMenuItem(
                            value: 2,
                            child: Text("Settings"),
                          ),
                        ],
                      )
                    : PopupMenuButton(
                        itemBuilder: (context) => [
                          PopupMenuItem(
                            value: 1,
                            child: Text("Clear call log"),
                          ),
                          PopupMenuItem(
                            value: 2,
                            child: Text("Settings"),
                          ),
                        ],
                      ),
          ],

          bottom: TabBar(
            controller: _tabController,
            onTap: (index) {
              // var TabIndex = tabIndex.toString();
              // if(index=="CHATS")
              //   {
              //     print("Current Index :"+TabIndex);
              //   }
            },

            indicatorWeight: 3,
            indicatorColor: Colors.white,
            //Change background color from here
            tabs: [
              Tab(
                // icon: Icon(Icons.home),
                child: Text("CHATS"),
              ),
              Tab(
                child: Text("STATUS"),
              ),
              Tab(
                child: Text("CALLS"),
              ),
            ],
          ),
        ),
        floatingActionButton: (position == 0)
            ? FloatingActionButton(
                // backgroundColor: Colors.red,
                child: Icon(Icons.message),
                onPressed: () {},
              )
            : (position == 1)
                ? FloatingActionButton(
                    // backgroundColor: Colors.blue,
                    child: Icon(Icons.add_a_photo),
                    onPressed: () {},
                  )
                : FloatingActionButton(
                    // backgroundColor: Colors.purple,
                    child: Icon(Icons.add_call),
                    onPressed: () {},
                  ),
        body: TabBarView(
          controller: _tabController,
          children: [
            Tab1Example(),
            Tab2Example(),
            Tab3Example(),
            // SingleChildScrollView(
            //   child: Column(
            //     children: [
            //       Text("Tab 4")
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
