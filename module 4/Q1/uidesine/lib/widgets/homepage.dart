import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: 
    const  Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text("Menu",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30),),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30.0),
                child: Icon(size: 35,Icons.accessibility_new_outlined,color: Colors.black,),
              )
            ],
          ),

        ],
      )
      ),
    );
  }
}