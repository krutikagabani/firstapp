import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GradientColorWidget extends StatefulWidget {
  @override
  _GradientColorWidgetState createState() => _GradientColorWidgetState();
}

class _GradientColorWidgetState extends State<GradientColorWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gradient Color example"),
      ),
      body: Center(
        child: Container(
          width: 200.0,
          height: 200.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),

            gradient: LinearGradient(
              colors: [
                const Color(0xFF3366FF),
                const Color(0xFF00CCFF),
              ],
              begin: const FractionalOffset(0.0, 0.0),
              end: const FractionalOffset(1.0, 0.0),

            ),

          ),
          child: Text("Hello"),
        ),
      ),
    );

  }
}
