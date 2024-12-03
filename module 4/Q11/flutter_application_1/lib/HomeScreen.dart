import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screen/Audio_Screen.dart';
import 'package:flutter_application_1/Screen/Gellary.dart';
import 'package:flutter_application_1/Screen/Vedio_Screen.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {

  int curruntIndex = 0;
List<Widget> Screen = [
  GalleryScreen(),
  AudioScreen(),
  VedioScreen(),

];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child:Screen[curruntIndex] ,),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: curruntIndex,
        onTap: (value) {
       setState(() {
         curruntIndex =value;
       });
        },
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        items:[
          BottomNavigationBarItem(
            icon: Icon(Icons.photo_library),
            label: 'Gallery',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_music),
            label: 'Audio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_library),
            label: 'Video',
          ),
        ]),
    );
  }
}