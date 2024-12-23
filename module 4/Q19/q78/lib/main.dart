
/* 78. Write a program to add name from the text view and insert into the 
listview. If you click on the listview then name should be show in the 
dialog box. When user press for 2 seconds on particular List item then 
open Context Menu (Delete Item, Edit Item, Exit). If user click on 
Delete Item then Open one Alert Dialog with message (“Are you sure 
want to delete Item?”) and yes, no button if user press yes button then 
remove item from list. (Click a DELETE button, it gives a confirm box) 
If user click on Edit item then selected item display on EditText and 
again user click on button then this (updated item) should be replace 
with old item   */

import 'package:flutter/material.dart';
import 'package:q78/q78.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Q78(),
    );
  }
}