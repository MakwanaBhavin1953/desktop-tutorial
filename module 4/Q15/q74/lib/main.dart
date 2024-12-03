// 74. Write a code to redirect user from one activity to another when   button click.
import 'package:flutter/material.dart';
import 'package:q74/Q74b.dart';

void main(){
    runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: q74(),
    );
  }
}




class Q74 extends StatefulWidget {
  const Q74({super.key});

  @override
  State<Q74> createState() => _Q26State();
}

class _Q26State extends State<Q74> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Page"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Q74()));
            },
            child: Text("Go to next page")),
      ),
    );
  }
}
