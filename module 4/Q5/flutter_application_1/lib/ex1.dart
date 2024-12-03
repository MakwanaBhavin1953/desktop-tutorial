import 'package:flutter/material.dart';

class Ex1 extends StatefulWidget {
  const Ex1({super.key});

  @override
  State<Ex1> createState() => _Ex1State();
}

class _Ex1State extends State<Ex1> {
  final List<String> cities = [
    "Ahmedabad",
    "Rajkot",
    "Vadodara",
    "surendanagar",
    "jamanagar"
  ];
 
  String? selectedCity;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("citylist"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        String? tempSelectedCity = selectedCity;
                        return AlertDialog(
                          title: Text("Select anyone City"),
                          content:Container(
                            width: double.maxFinite,
                            child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: cities.length,
                              itemBuilder: (context, index) {
                                return RadioListTile<String>(
                                  value: cities[index],
                                   groupValue: tempSelectedCity,
                                    onChanged: (value) {
                                      setState(() {
                                        tempSelectedCity =value;
                                      });
                                    },);
                              },
                              ),
                          ),
                          actions: [
                            TextButton(onPressed: (){
                              Navigator.of(context).pop();
                            }, child:Text("CANCEL")),
                             TextButton(onPressed: (){
                              Navigator.of(context).pop(tempSelectedCity);
                            }, child:Text("OK")),
                          ],
                        );
                      },
                    );
                  },
                  child: Text("Select City"))
            ],
          ),
        ));
  }
}
