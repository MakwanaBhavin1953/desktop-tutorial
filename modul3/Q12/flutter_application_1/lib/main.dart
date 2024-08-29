import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen1.dart';
import 'package:flutter_application_1/screen2.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: scrreen2(),
    );
  }
}