//  51.  Create an application to input 2 numbers from user and all numbers 
//       between those 2 numbers in next activity




import 'package:flutter/material.dart';
import 'package:flutter_application_1/inputscreen.dart';

void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Inputscreen(),
    );
  }
}