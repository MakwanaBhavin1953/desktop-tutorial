import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screen/Compose_Screen.dart';
import 'package:flutter_application_1/Screen/Inobox.dart';
import 'package:flutter_application_1/Screen/SentScreen.dart';
import 'package:flutter_application_1/Screen/Setting_Screen.dart';
import 'package:flutter_application_1/Screen/Trance_Screen.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int currectIndex =0;

final List<Widget> page = [
  InboxEx(),
  ComposeScreen(),
  Sentscreen(),
  TranceScreen(),
  
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  // appBar: AppBar(
  //   backgroundColor: Colors.amberAccent,
  //   centerTitle: true,
  //   title: Text("Gmail"),
  // ),
  body: page[currectIndex],
  bottomNavigationBar: BottomNavigationBar(selectedItemColor: Colors.black,
  unselectedItemColor: Colors.grey,
    currentIndex: currectIndex,
    onTap: (value) {
      setState(() {
        currectIndex = value;
      });
    },
    items: [
                BottomNavigationBarItem(icon: Icon(Icons.inbox,), label: 'Inbox'),
          BottomNavigationBarItem(icon: Icon(Icons.create,), label: 'Compose'),
          BottomNavigationBarItem(icon: Icon(Icons.send,), label: 'Sent'),
          BottomNavigationBarItem(icon: Icon(Icons.delete), label: 'Trash'),
          
    ],
    ),
    );
  }
}