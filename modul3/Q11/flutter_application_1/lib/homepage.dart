import 'package:flutter/material.dart';
import 'package:flutter_application_1/loginpage.dart';
import 'package:flutter_application_1/ragisrtationform.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _LoginpageState();
}

class _LoginpageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.amber,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Loginpage(),));
            }, child: Text("Login")),
            SizedBox(height: 20,),
              ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Ragisrtationform(),));
            }, child: Text("Ragistation Now")),

          ],
        ),
      ),
    );
  }
}