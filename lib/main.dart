import 'package:firstapp/CheckboxExample.dart';
import 'package:firstapp/HomeScreen.dart';
import 'package:firstapp/TextWidgetExample.dart';
import 'package:flutter/material.dart';
import 'AlertDialogExample.dart';
import 'AlertDialoguePractice.dart';
import 'BottomNavigation.dart';
import 'BottomNavigationExample.dart';
import 'BottomNavigationPractice.dart';
import 'ButtonsExample.dart';
import 'CameraGalleryContactList.dart';
import 'CardWidgetExample.dart';
import 'ContainerExample.dart';
import 'DialNumber.dart';
import 'DrawerExample.dart';
import 'DrawerPractice.dart';
import 'DropDownPractice.dart';
import 'DropdownExample.dart';
import 'EmailExamplePackeges.dart';
import 'ExpandedandFlexibleExample.dart';
import 'FlutterToastPractice.dart';
import 'GradientColorWidget.dart';
import 'GridViewExample.dart';
import 'HorizontalListView.dart';
import 'ImageWidgetExample.dart';
import 'ImgCard.dart';
import 'ListViewPractice.dart';
import 'MxPlayer.dart';
import 'NewHomeScreen.dart';
import 'AddSubMultiDiv.dart';
import 'CallExamplePakdges.dart';
import 'ProductFirstScreen.dart';
import 'RadioButtonExample.dart';
import 'ResultFirstScreen.dart';
import 'ShareTextExamplePackages.dart';
import 'StackExample.dart';
import 'StackPractice.dart';
import 'TabExample.dart';
import 'TextFieldExample.dart';
import 'TextFieldPractice.dart';
import 'TextFormfieldExample.dart';
import 'TextRedirectScreen.dart';
import 'package:fluttertoast/fluttertoast.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget { //inheritance
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: TabExample(),
    );
  }
}

