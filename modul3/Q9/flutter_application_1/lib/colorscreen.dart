import 'package:flutter/material.dart';

class Colorscreen extends StatefulWidget {
  const Colorscreen({super.key});

  @override
  State<Colorscreen> createState() => _ColorscreenState();
}

class _ColorscreenState extends State<Colorscreen> {
  Color backGroundColor = Colors.white;
  String? selectColor = 'white';

  void changeColor(String? color) {
    selectColor = color;
    setState(() {
      switch (color) {
        case 'Red':
          backGroundColor = Colors.red;

          break;
        case 'Green':
          backGroundColor = Colors.green;
          break;
        case 'Blue':
          backGroundColor = Colors.blue;
          break;
        case 'Yellow':
          backGroundColor = Colors.yellow;
          break;
        default:
          backGroundColor = Colors.white;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2.0,
        backgroundColor: Colors.blue,
        title: Center(child: Text("Select Color")),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        margin: EdgeInsets.all(16),
        color: backGroundColor,
        child: Column(
          children: [
            Text(
              "Select Color",
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(
              height: 20,
            ),
            Radio(
                value: "Red", groupValue: selectColor, onChanged: changeColor),
            Text("Red"),
            Radio(
                value: "Green", groupValue: selectColor, onChanged: changeColor),
            Text("Green"),
            Radio(
                value: "Blue", groupValue: selectColor, onChanged: changeColor),
            Text("Blue"),
            Radio(
                value: "Yellow", groupValue: selectColor, onChanged: changeColor),
            Text("Yellow"),
          ],
        ),
      ),
    );
  }
}
