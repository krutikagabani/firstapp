import 'package:flutter/material.dart';

class HorizontalListView extends StatefulWidget {

  @override
  _HorizontalListViewState createState() => _HorizontalListViewState();
}

class _HorizontalListViewState extends State<HorizontalListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Horizontal Listview Example"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 300.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 300.0,
                    margin: EdgeInsets.all(15.0),
                    color: Colors.red,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 300.0,
                    margin: EdgeInsets.all(15.0),
                    color: Colors.green,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 300.0,
                    margin: EdgeInsets.all(15.0),
                    color: Colors.blue,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 300.0,
                    margin: EdgeInsets.all(15.0),
                    color: Colors.yellow,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
