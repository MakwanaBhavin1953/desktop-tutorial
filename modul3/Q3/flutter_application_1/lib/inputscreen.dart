import 'package:flutter/material.dart';
import 'package:flutter_application_1/rangelist.dart';

class Inputscreen extends StatefulWidget {
  const Inputscreen({super.key});

  @override
  State<Inputscreen> createState() => _InputscreenState();
}

class _InputscreenState extends State<Inputscreen> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.blueGrey,
        title: Center(
          child: Text("Input toe number"),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: controller1,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Enter the first number"),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: controller2,
              keyboardType: TextInputType.number,
              decoration:
                  InputDecoration(labelText: "Enter the secound  number"),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                int? num1 = int.tryParse(controller1.text);
                int? num2 = int.tryParse(controller2.text);
                if (num1 != null && num2 != null) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Rangelist(start: num1,end: num2,),
                      ));
                }else{
                  showDialog(
                    context: context, 
                    builder: (context) {
                      return AlertDialog(
                        title: Text("Invalid Input"),
                        content: Text("Pleas enter  valid number"),
                        actions: [
                          TextButton(onPressed: (){
                          Navigator.pop(context);
                          }, child: Text("ok"))
                        ],
                      );
                    },
                    );
                }
              },
              child: Text("Clicked Me"),
            )
          ],
        ),
      ),
    );
  }
}
