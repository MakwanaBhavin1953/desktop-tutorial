// 55. create an application to display Textview when checkbox is checked
// and hide otherwise

import 'package:flutter/material.dart';
import 'package:flutter_application_1/checkbox.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CheckboxExample(),
    );
  }
}