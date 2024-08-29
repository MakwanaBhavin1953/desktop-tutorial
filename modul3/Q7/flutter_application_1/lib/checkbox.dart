import 'package:flutter/material.dart';

class CheckboxExample extends StatefulWidget {
  const CheckboxExample({super.key});

  @override
  State<CheckboxExample> createState() => _CheckboxExampleState();
}

class _CheckboxExampleState extends State<CheckboxExample> {
  bool cheVelue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2.0,
        backgroundColor: Colors.blue,
        title: Center(
          child: Text("ChekBox"),
        ),
      ),
      body: Center(
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Checkbox(
              value: cheVelue, 
              onChanged: (velue){
                setState(() {
                  cheVelue = velue!;
                });
              },
              ),
                 SizedBox(height: 20),
                 if(cheVelue)Text("Hello CheckBox",style: TextStyle(fontSize: 25),)

          ],
        ),
      ),
    );
  }
}