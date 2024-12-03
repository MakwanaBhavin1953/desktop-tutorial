// 63. Write a code to display alert dialog with positive, negative and
//     neutral button and display toast respectively user's choice

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AlertDialogEx(),
    );
  }
}

class AlertDialogEx extends StatefulWidget {
  const AlertDialogEx({super.key});

  @override
  State<AlertDialogEx> createState() => _AlertDialogExState();
}

class _AlertDialogExState extends State<AlertDialogEx> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text("Alert Dialog"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text("Choos Option"),
                    content: Text("Select anyone action"),
                    actions: [
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                            Fluttertoast.showToast(
                                msg: "Positive action choosen",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.BOTTOM);
                          },
                          child: Text("positive")),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                            Fluttertoast.showToast(
                                msg: "Nagative action choosen",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.BOTTOM);
                          },
                          child: Text("Nagative")),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                            Fluttertoast.showToast(
                                msg: "Neutral action choosen",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.BOTTOM_LEFT);
                          },
                          child: Text("Neutral"))
                    ],
                  );
                },
              );
            },
            child: Text("Alert Dialog")),
      ),
    );
  }
}
