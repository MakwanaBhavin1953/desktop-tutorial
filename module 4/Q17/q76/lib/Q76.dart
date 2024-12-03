import 'package:flutter/material.dart';

class Q76 extends StatefulWidget {
  const Q76({super.key});

  @override
  State<Q76> createState() => _Q76State();
}

class _Q76State extends State<Q76> {


  TextEditingController num1controller = TextEditingController();
  TextEditingController  num2controller = TextEditingController();

  int? rejult = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: num1controller,
              decoration: InputDecoration(hintText: "Enter num 1 : "),
            ),
            TextField(
              controller: num2controller,
              decoration: InputDecoration(hintText: "Enter num 2 : "),
            ),

            SizedBox(height: 20,),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                 rejult = int.parse(num1controller.text.toString()) + int.parse(num2controller.text.toString());
                  });
                },
                child: Text("Sum")),

                 SizedBox(height: 20,),
            Text(
              "Result = $rejult",
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}