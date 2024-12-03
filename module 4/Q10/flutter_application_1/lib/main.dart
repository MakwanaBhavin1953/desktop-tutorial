// 69. Create an application like gmail and display Screens according to 
//     user selection and design each page with dummy data

import 'package:flutter/material.dart';
import 'package:flutter_application_1/HomeScreen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homescreen(),
    );
  }
}