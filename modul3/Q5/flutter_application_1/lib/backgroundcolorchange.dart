import 'dart:math';

import 'package:flutter/material.dart';

class BgColorChange extends StatefulWidget {
  const BgColorChange({super.key});

  @override
  State<BgColorChange> createState() => _BgColorChangeState();
}

class _BgColorChangeState extends State<BgColorChange> {



  Color backgroundcolorchange  = Colors.green;

void changeColor(){
  
  setState(() {
    backgroundcolorchange = Color(Random().nextInt(0xffffffff));
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Background Changer'),
      ),
      body: AnimatedContainer(
        duration: Duration(seconds: 2),
        color: backgroundcolorchange,
        child: Center(
          child: ElevatedButton(onPressed: changeColor, child: Text("Change BackGround Color")),
        ),
        )
    );
  }
}