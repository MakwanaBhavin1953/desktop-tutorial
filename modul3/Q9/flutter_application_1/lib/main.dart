// 57.  Write a program in android display screen color which the Color will
//      be select from the radio button.

import 'package:flutter/material.dart';
import 'package:flutter_application_1/colorscreen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Colorscreen(),
    );
  }
}





