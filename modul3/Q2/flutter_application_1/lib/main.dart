// Q:2  Create an application to take input number from user and print its
//      reverse number in TextField

import 'package:flutter/material.dart';
import 'package:flutter_application_1/reversnumber.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ReverseNumberScreen(),
    );
  }
}