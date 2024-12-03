//65. open alert dialog when user want to exit from the application

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ExitApplication(),
    );
  }
}

class ExitApplication extends StatefulWidget {
  const ExitApplication({super.key});

  @override
  State<ExitApplication> createState() => _ExitApplicationState();
}

class _ExitApplicationState extends State<ExitApplication> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Dialog for Exit"),
        elevation: 1.5,
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
             showDialog(context: context, builder: (context) {
               return AlertDialog(
                content: Text("Do you wont to exit"),
                actions: [
                  TextButton(onPressed: (){
                    // Navigator.pop(context);
                  }, child: Text("No")),
                   TextButton(onPressed: (){
                    Navigator.pop(context);
                  }, child: Text("Yes")),
                ],
               );
             },);
          },
          child: Text("Exit"),
        ),
      ),
    );
  }
}
