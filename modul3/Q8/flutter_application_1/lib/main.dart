// 56. Write a program to show four images around Textview.

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ImageAround(),
    );
  }
}

class ImageAround extends StatelessWidget {
  const ImageAround({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ImageAround"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/1.jpeg"),
              SizedBox(
                width: 10,
              ),
              Image.asset("assets/2.jpeg",)
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/3.jpeg"),
              SizedBox(
                width: 10,
              ),
              Image.asset("assets/4.jpeg")
            ],
          )
        ],
      ),
    );
  }
}
