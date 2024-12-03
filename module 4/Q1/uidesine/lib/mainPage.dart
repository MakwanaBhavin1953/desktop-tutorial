import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:uidesine/widgets/cart.dart';
import 'package:uidesine/widgets/homepage.dart';
import 'package:uidesine/widgets/settings.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  int _selectIndex = 0;
  List<Widget> _listWidgets = [Homepage(),Settings(),Cart()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _listWidgets[_selectIndex],
      ),
    bottomNavigationBar: 
    
    CurvedNavigationBar(
      color: Colors.black87,
      buttonBackgroundColor: Colors.white,
      animationDuration: Duration(milliseconds: 300),
      onTap: (index) {
        setState(() {
          _selectIndex =index;
        });
      },
      backgroundColor: Colors.white,
      items: [
       Icon(Icons.home,size: 30,color: Colors.black,),
       Icon(Icons.settings,size: 30,color: Colors.black,),
       Icon(Icons.shopping_bag_outlined,size: 30,color: Colors.black,),
    ]),
    );
  }
}