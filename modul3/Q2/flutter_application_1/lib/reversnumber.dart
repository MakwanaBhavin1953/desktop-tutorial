import 'package:flutter/material.dart';

class ReverseNumberScreen extends StatefulWidget {
  const ReverseNumberScreen({super.key});

  @override
  _ReverseNumberScreenState createState() => _ReverseNumberScreenState();
}

class _ReverseNumberScreenState extends State<ReverseNumberScreen> {
  final TextEditingController _controller = TextEditingController();
  String _reversedNumber = "";

  void _reverseNumber() {
    setState(() {
      String input = _controller.text;
      if (input.isNotEmpty && int.tryParse(input) != null) {
        _reversedNumber = input.split('').reversed.join('');
      } else {
        _reversedNumber = "Invalid input";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Reverse Number App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Enter a number',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _reverseNumber,
              child: Text('Reverse'),
            ),
            const SizedBox(height: 16.0),
            Text(
              'Reversed Number: $_reversedNumber',
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}
