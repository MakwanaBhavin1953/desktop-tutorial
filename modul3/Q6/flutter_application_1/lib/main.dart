// 54. create an application to increate font size when plus button click and
// decrease when minus button click


import 'package:flutter/material.dart';
import 'package:flutter_application_1/fontsize.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        body:Fontsize()
      ),
    );
  }
}



