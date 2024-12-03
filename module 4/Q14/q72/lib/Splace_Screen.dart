import 'dart:async';

import 'package:flutter/material.dart';

class SplaceScreenEx extends StatefulWidget {
  const SplaceScreenEx({super.key});

  @override
  State<SplaceScreenEx> createState() => _SplaceScreenExState();
}

class _SplaceScreenExState extends State<SplaceScreenEx> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage(),));
    },);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
              end: Alignment.bottomLeft,
          colors: [
          Colors.black, Colors.black
        ])
      ),
      child: Center(
        child: Image.asset("assets/images/Vector.png"),
      ),
     ),
    );
  }
}


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Flutter",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),),
    );
  }
}