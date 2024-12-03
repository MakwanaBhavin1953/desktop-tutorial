// 76. Create an Application to take input two numbers from users and 
//    when user press button then display sum of those values of next 
//    Activity


import 'package:flutter/material.dart';
import 'package:q76/Q76.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Q76(),
      debugShowCheckedModeBanner: false,
    );
  }
}