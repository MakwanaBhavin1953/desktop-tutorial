// 77. Call via urllauncher, Send Sms via urllauncher

import 'package:flutter/material.dart';
import 'package:q77/q77.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Q77(),
    );
  }
}