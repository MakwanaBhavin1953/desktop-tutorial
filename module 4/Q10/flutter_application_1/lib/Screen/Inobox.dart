import 'package:flutter/material.dart';

class InboxEx extends StatefulWidget {
  const InboxEx({super.key});

  @override
  State<InboxEx> createState() => _InboxExState();
}

class _InboxExState extends State<InboxEx> {
  final emails = [
    {'from': 'John', 'subject': 'Meeting Tomorrow', 'time': '10:00 AM'},
    {'from': 'HR', 'subject': 'New Policy Update', 'time': 'Yesterday'},
    {'from': 'Amazon', 'subject': 'Your Order has Shipped', 'time': '2 Days Ago'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Inbox')),
      body: ListView.builder(
        itemCount: emails.length,
        itemBuilder: (context, index) {
          final email = emails[index];
          return ListTile(
            leading: CircleAvatar(
              child: Text(email['from']![0]), 
            ),
            title: Text(email['from']!),
            subtitle: Text(email['subject']!),
            trailing: Text(email['time']!),
          );
        },
      ),
    );
  }
}


