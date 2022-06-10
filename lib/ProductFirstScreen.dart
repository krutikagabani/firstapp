import 'package:firstapp/ProductSecondScreen.dart';
import 'package:flutter/material.dart';

class ProductFirstScreen extends StatefulWidget {

  @override
  _ProductFirstScreenState createState() => _ProductFirstScreenState();
}

class _ProductFirstScreenState extends State<ProductFirstScreen> {
  TextEditingController _pname = TextEditingController();
  TextEditingController _price = TextEditingController();
  // TextEditingController _dis = TextEditingController();
  // TextEditingController _disamt = TextEditingController();
  // TextEditingController _payable = TextEditingController();

  var Pname="";
  var Price="";
  var Dis="";
  var Disamt="";
  // var Payable="";

  var discount="10%";

  _radiobutton(val)
  {
    setState(() {
      discount=val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product details"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Product name :", style: TextStyle(fontSize: 25.0),),
              SizedBox(height: 10.0,),
              TextFormField(
                controller: _pname,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter product name",
                  hintStyle: TextStyle(
                    fontSize: 20.0,
                  )
                ),
              ),
              SizedBox(height: 20.0,),
              Text("Price :", style: TextStyle(fontSize: 25.0),),
              SizedBox(height: 10.0,),
              TextFormField(
                controller: _price,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter product's Price",
                    hintStyle: TextStyle(
                      fontSize: 20.0,
                    )
                ),
              ),
              SizedBox(height: 40.0,),
              Text("How much Discount ?", style: TextStyle(fontSize: 25.0),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  Radio(
                    groupValue: discount,
                    value: "10",
                    onChanged:_radiobutton,
                  ),
                  Text("10%", style: TextStyle(fontSize: 25.0),),

                  Radio(
                    groupValue: discount,
                    value: "20",
                    onChanged:_radiobutton,
                  ),
                  Text("20%", style: TextStyle(fontSize: 25.0),),

                  Radio(
                    groupValue: discount,
                    value: "30",
                    onChanged:_radiobutton,
                  ),
                  Text("30%", style: TextStyle(fontSize: 25.0),),

                ],
              ),
              SizedBox(height: 100.0,),
              Align(alignment: Alignment.center,
                child: RaisedButton(
                  onPressed: (){
                    var Pname = _pname.text.toString();
                    var Price = _price.text.toString();
                    var Dis = discount.toString();

                    var DisAmt = double.parse(Price) * double.parse(Dis) / 100;
                    var Payable = double.parse(_price.text) - DisAmt;




                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => ProductSecondScreen(
                          pname: Pname,
                          price: Price,
                          dis: Dis,
                          disamt: Disamt.toString(),
                          payable: Payable.toString(),
                        ))
                    );
                  },
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text("Calculate", style: TextStyle(fontSize: 20.0),),
                    padding: EdgeInsets.fromLTRB(30, 25, 30, 25),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
