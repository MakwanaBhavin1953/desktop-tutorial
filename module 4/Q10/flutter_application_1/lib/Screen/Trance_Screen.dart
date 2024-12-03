import 'package:flutter/material.dart';

class TranceScreen extends StatefulWidget {
  const TranceScreen({super.key});

  @override
  State<TranceScreen> createState() => _TranceScreenState();
}

class _TranceScreenState extends State<TranceScreen> {
   final sentEmails = [
      {'to': 'Alice', 'subject': 'Meeting Notes', 'time': 'Yesterday'},
      {'to': 'Bob', 'subject': 'Project Update', 'time': '2 Days Ago'},
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:    AppBar(
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
        title: Text("Transe screen"),),
        body: ListView.builder(
          itemCount: sentEmails.length,
          itemBuilder: (context, index) {
            return ListTile(
               leading: CircleAvatar(child: Text(sentEmails[index]['to']![0])),
          title: Text(sentEmails[index]['to']!),
          subtitle: Text(sentEmails[index]['subject']!),
          trailing: Text(sentEmails[index]['time']!),
            );
          },),
    );
  }
}