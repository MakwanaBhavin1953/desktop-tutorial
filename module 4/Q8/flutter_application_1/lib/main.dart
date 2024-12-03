//  67. Write a code to display profile and logout option in options menu

import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OptionMenu(),
    );
  }
}

class OptionMenu extends StatefulWidget {
  const OptionMenu({super.key});

  @override
  State<OptionMenu> createState() => _OptionMenuState();
}

class _OptionMenuState extends State<OptionMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        centerTitle: true,
            title: Text('Options Menu Example'),
              actions: [
                PopupMenuButton(
                  itemBuilder: (context) {
                  return [
                    PopupMenuItem(
                      value: 'Profile',
                      child: Text("Profile")),
                       PopupMenuItem(
                      value: 'Logout',
                      child: Text("Logout")),
                  ];
                  
                },
                onSelected: (value) {
                  if (value == 'Profile') {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content:  Text('Profile selected')),
                    );
                  }else if(value == 'Logout'){
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Logout selected')));
                  }
                },
                )
              ],
      ),
      body: Center(
        child: Text("Options Menu Example"),
      ),
    );
  }
}