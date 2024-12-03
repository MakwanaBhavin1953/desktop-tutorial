// Q16. Write a code to display alert dialog with list of cities and Single choice selection display selected city in TextView

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Q16(),
    );
  }
}

class Q16 extends StatefulWidget {
  const Q16({super.key});

  @override
  State<Q16> createState() => _Q16State();
}

class _Q16State extends State<Q16> {
  String? selectedCity;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text("Select a city"),
                        actions: [
                          Column(
                            children: [
                              RadioListTile(
                                title: const Text("Ahmdabad"),
                                value: "Ahmdabad",
                                groupValue: selectedCity,
                                onChanged: (value) {
                                 setState(() {
                                    selectedCity = value;
                                 });
                                  // Navigator.pop(context);
                                },
                              ),
                              RadioListTile(
                                title: const Text("Rajkot"),
                                value: "Rajkot",
                                groupValue: selectedCity,
                                onChanged: (value) {
                                 setState(() {
                                    selectedCity = value;
                                 });
                                  // Navigator.pop(context);
                                },
                              ),
                              RadioListTile(
                                title: const Text("Surendanagar"),
                                value: "Surendanagar",
                                groupValue: selectedCity,
                                onChanged: (value) {
                                 setState(() {
                                    selectedCity = value;
                                 });
                                  // Navigator.pop(context);
                                },
                              ),
                              RadioListTile(
                                title: const Text("Vadodara"),
                                value: "Vadodara",
                                groupValue: selectedCity,
                                onChanged: (value) {
                                  setState(() {
                                     selectedCity = value;
                                  });
                                  // Navigator.pop(context);
                                },
                              ),
                              RadioListTile(
                                title: const Text("Gandhinagar"),
                                value: "Gandhinagar",
                                groupValue: selectedCity,
                                onChanged: (value) {
                                  setState(() {
                                     selectedCity = value;
                                  });
                                  // Navigator.pop(context);
                                },
                              ),
                              Row(
                                children: [
                                  TextButton(onPressed: (){
                                    Navigator.of(context).pop();
                                  }, child: Text("Cancel")),
                                  TextButton(onPressed: (){
                                    Navigator.of(context).pop(selectedCity);
                                  }, child: Text("ok")),
                                ],
                              )
                            ],
                          )
                        ],
                      );
                    },
                  );
                },
                child: Text("Show Dialog")),
          ),
          const SizedBox(
            height: 25,
          ),
          Text(
            "Select City : $selectedCity",
            style: const TextStyle(fontSize: 25),
          )
        ],
      ),
    );
  }
}
