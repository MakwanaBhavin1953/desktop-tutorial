// 52. Create an application with radio buttons (Add, Substraction,
// Multiply, Division) EditText (number1, number2) and print result as
// per user choice from radio button in TextView


import 'package:flutter/material.dart';
import 'package:flutter_application_1/calculatepage.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Calculatepage(),
    );
  }
}