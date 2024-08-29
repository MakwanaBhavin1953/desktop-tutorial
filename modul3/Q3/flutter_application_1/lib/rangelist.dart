import 'package:flutter/material.dart';

class Rangelist extends StatelessWidget {
  final int start;
  final int end;
  const Rangelist({super.key,required this.start,required this.end});

    List<int> generateRange(int num1,int num2) {
    List<int> numbers = [];
    for(int i = num1; i <= num2; i++) {
      numbers.add(i);
    }
    return numbers;
  }

  @override
  Widget build(BuildContext context) {
  List<int>  rangelist = generateRange(start,end);

  
 
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.amber,
        title: Center(
          child: Text("output number"),
        ),
      ),
      body: ListView.builder(
        itemCount:rangelist.length ,
        itemBuilder: (context, index) {
          return ListTile(
              title: Text('${rangelist[index]}'),
          );
        },),
    );
  }
}