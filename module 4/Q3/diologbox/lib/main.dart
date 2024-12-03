//62. Write a code to display simple alert dialog with title, description and 
// icon when button is clicked


import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Dialog Box"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            showDialog(context: context,
             builder: (context) {
               return AlertDialog(
                title: Row(
                  children: [
                    Icon(Icons.info),
                     SizedBox(width: 8),
              Text('Alert Title'),
                  ],
                ),
                content:  Text('This is a simple alert dialog Box.'),
                actions: [
                  TextButton(onPressed: (){
                    Navigator.pop(context);
                  }, child: Text("OK"))
                ],
               );
             },
             );
          },
           child: Text("Show Alert Dialog")),
      ),
    );
  }
}