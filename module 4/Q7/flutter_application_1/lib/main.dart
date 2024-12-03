// 66. Write a code to select Date on button's click event

import 'package:flutter/material.dart';
import 'package:flutter_application_1/DataPickerEx.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DatapickerExample(),
    );
  }
}