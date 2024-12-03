import 'package:flutter/material.dart';

class VedioScreen extends StatefulWidget {
  const VedioScreen({super.key});

  @override
  State<VedioScreen> createState() => _VedioScreenState();
}

class _VedioScreenState extends State<VedioScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
        title: Text("Audio Screen"),
      ),




      body: Center(
        child: Text("Audio",style: TextStyle(fontSize: 40),),
      ) ,
    );
  }
}