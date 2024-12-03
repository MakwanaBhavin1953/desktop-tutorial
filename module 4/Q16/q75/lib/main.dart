// 75. Create an Android Application which Manage Activity Lifecycle 
//     Stages and Showing Toast with Performing Different Stages.



import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:q75/Q75.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Q75(),
    );
  }
}

