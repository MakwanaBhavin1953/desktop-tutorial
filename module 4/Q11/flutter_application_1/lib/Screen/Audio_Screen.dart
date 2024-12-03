import 'package:flutter/material.dart';

class AudioScreen extends StatefulWidget {
  const AudioScreen({super.key});

  @override
  State<AudioScreen> createState() => _AudioScreenState();
}

class _AudioScreenState extends State<AudioScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
        title: Text("Audio Screen"),
      ),
      body :Center(
        child: Text("Audio",style: TextStyle(fontSize: 40),),
      ) ,
    );
  }
}