import 'package:flutter/material.dart';

class ComposeScreen extends StatefulWidget {
  const ComposeScreen({super.key});

  @override
  State<ComposeScreen> createState() => _ComposeScreenState();
}

class _ComposeScreenState extends State<ComposeScreen> {
  @override
  Widget build(BuildContext context) {
TextEditingController toController = TextEditingController();
TextEditingController subjectController = TextEditingController();
TextEditingController messageController  = TextEditingController();


    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
        title: Text("Compose screen"),),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
              controller: toController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'To'),
            ),
             TextField(
              controller: subjectController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Subject'),
            ),
             Expanded(
            child: TextField(
              controller: messageController,
              maxLines: null,
              expands: true,
              decoration: InputDecoration(labelText: 'Message'),
            ),
          ),
           SizedBox(height: 10),
           Center(
            child: ElevatedButton(onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Email Sent Successfully!')));
            }, child: Text('Send'),),
           )
            ],
          ),
        ),
    );
  }
}