import 'package:flutter/material.dart';
// import 'package:flutter/src/rendering/box.dart';

class Calculatepage extends StatefulWidget {
  const Calculatepage({super.key});

  @override
  State<Calculatepage> createState() => _CalculatepageState();
}

class _CalculatepageState extends State<Calculatepage> {
  final TextEditingController controller1num = TextEditingController();
  final TextEditingController controller2num = TextEditingController();

 String Operation = "Addition";
 double? result;

   void _calculate() {
    double? num1 = double.tryParse(controller1num.text);
    double? num2 = double.tryParse(controller2num.text);

    if (num1 == null || num2 == null) {
      // Show error if inputs are invalid
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Invalid Input'),
            content: Text('Please enter valid numbers.'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text('OK'),
              ),
            ],
          );
        },
      );
      return;
    }

    switch (Operation) {
      case 'Add':
        result = num1 + num2;
        break;
      case 'Subtract':
        result = num1 - num2;
        break;
      case 'Multiply':
        result = num1 * num2;
        break;
      case 'Divide':
        if (num2 != 0) {
          result = num1 / num2;
        } else {
          result = null;
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text('Division by Zero'),
                content: Text('Cannot divide by zero.'),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text('OK'),
                  ),
                ],
              );
            },
          );
        }
        break;
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("CalculatePage"),
        ),
        elevation: 3,
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 75,
            ),
            TextField(
              controller: controller1num,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "Enter the first number",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: controller2num,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  labelText: "Enter the secound number",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Choos Operation",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Radio(
                    value: "Addition",
                    groupValue: Operation,
                    onChanged: (value) {
                      setState(() {
                        Operation = value!;
                      });
                    },
                  ),
                  Text("Addition"),
                  Radio(
                    value: "Subtraction",
                    groupValue: Operation,
                    onChanged: (value) {
                      setState(() {
                        Operation = value!;
                      });
                    },
                  ),
                  Text("Subtraction"),
                  Radio(
                    value: "Multiplication",
                    groupValue: Operation,
                    onChanged: (value) {
                      setState(() {
                        Operation = value!;
                      });
                    },
                  ),
                  Text("Multiplication"),
                  Radio(
                    value: "Division",
                    groupValue: Operation,
                    onChanged: (value) {
                      setState(() {
                        Operation = value!;
                      });
                    },
                  ),
                  Text("Division"),
                ],
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
                onPressed: _calculate,  
                child: Text("Calculate")),
                 SizedBox(height: 20),
                if(result != null)
                Text('Result: $result')
          ],
        ),
      ),
    );
  }
}
