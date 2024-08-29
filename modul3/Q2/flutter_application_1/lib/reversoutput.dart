import 'package:flutter/material.dart';

class Reversoutput extends StatelessWidget {
   final   String  reversedNumber;
  const Reversoutput({super.key,required this.reversedNumber});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.blueAccent,
        title: const Center(
          child: Text("REVERS OUTPUT"),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(reversedNumber),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text("GO TO FIRST SCREEN"),
            )
          ],
        ),
      ),
    );
  }
}