// 71. Create an application with Navigation Drawer with 3 tabs Gallery, 
//     audio and video and design each page with dummy data

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Home_Page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
