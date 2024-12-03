import 'package:flutter/material.dart';

class Sentscreen extends StatefulWidget {
  const Sentscreen({super.key});

  @override
  State<Sentscreen> createState() => _SentscreenState();
}

class _SentscreenState extends State<Sentscreen> {
  final sentEmails = [
      {'to': 'Alice', 'subject': 'Meeting Notes', 'time': 'Yesterday'},
      {'to': 'Bob', 'subject': 'Project Update', 'time': '2 Days Ago'},
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
        title: Text("Sent screen"),),
        body: ListView.builder(
          itemCount: sentEmails.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(child: Text(sentEmails[index]['to']![0])),
          title: Text(sentEmails[index]['to']!),
          subtitle: Text(sentEmails[index]['subject']!),
          trailing: Text(sentEmails[index]['time']!),
            );
          },
        ),
    );
  }
}