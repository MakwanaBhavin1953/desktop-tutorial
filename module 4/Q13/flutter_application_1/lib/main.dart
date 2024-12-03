// 72. create a Phone call App when user first time open the app it will 
//    automatically generate one dialog which has two option allow, deny if 
//    click on allow permission is grant in settings


 import 'package:flutter/material.dart';
import 'package:flutter_application_1/Q72.dart';

void main(){
    runApp(MyApp());
 }
 class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Q72(),
    );
  }
}