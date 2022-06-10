import 'package:flutter/material.dart';

class ProductSecondScreen extends StatefulWidget {
  var pname ="";
  var price="";
  var dis="";
  var disamt="";
  var payable="";

  ProductSecondScreen({
    this.pname,
    this.price,
    this.dis,
    this.disamt,
    this.payable,
});

  @override
  _ProductSecondScreenState createState() => _ProductSecondScreenState();
}

class _ProductSecondScreenState extends State<ProductSecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.pname),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              width: 700.0,
              height: 700.0,
              decoration: BoxDecoration(
                color: Colors.indigo,
              ),
              child: Card(
                color: Colors.lightBlueAccent.shade100,
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Price :" + widget.price, style: TextStyle(fontSize: 25.0),),
                    Divider(
                      height: 50,
                      thickness: 5,
                    ),
                    Text("Discount :" + widget.dis),
                    Divider(
                      height: 50,
                      thickness: 5,
                    ),
                    Text("Discount Amount :" + widget.disamt),
                    Divider(
                      height: 50,
                      thickness: 5,
                    ),
                    Text("Payable Amount" + widget.payable),
                    Divider(
                      height: 50,
                      thickness: 5,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
