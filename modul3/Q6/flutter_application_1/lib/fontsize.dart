import 'package:flutter/material.dart';

class Fontsize extends StatefulWidget {
  const Fontsize({super.key});

  @override
  State<Fontsize> createState() => _FontsizeState();
}

class _FontsizeState extends State<Fontsize> {
  double fontsize = 20.0;

  void inCreasFontSize(){
    setState(() {
        fontsize += 2.0;
    });
  }

  void decreaseFontSize(){
    setState(() {
      if (fontsize > 10.0) {
         fontsize -= 2.0;
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Font Size Change"),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             Text("Bhavin Makwana",style: TextStyle(fontSize: fontsize),),
             SizedBox(height: 20,),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(onPressed: inCreasFontSize, icon: Icon(Icons.add)),
             SizedBox(width: 10,),
             IconButton(onPressed: decreaseFontSize, icon: Icon(Icons.remove)),


              ],
             )
          ],
        ),
      ),
    );
  }
}