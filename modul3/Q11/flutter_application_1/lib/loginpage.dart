import 'package:flutter/material.dart';
import 'package:flutter_application_1/ragisrtationform.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1.5,
        backgroundColor: Colors.blue,
        title: Center(child: Text("LoginPage"),),),
        body: Column(
          children: [
            SizedBox(height: 60,),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                   hintText: 'abc@gamil.com',
                             labelText: 'Email',
                ),
              ),
            ),
             SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                   hintText: 'Enter your password',
                             labelText: 'Password',
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child:Center(
                child: Text("Login",style: TextStyle(fontSize: 20),),
              ) ,
              height: 50,
              width: 375,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                border: Border.all(color: Colors.black,width: 1.2,)
              ),
            ),
            SizedBox(height: 15,),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Forgot Password ?",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                ],
              ),
            ),
             SizedBox(height: 15,),
              Text("--------------------- OR----------------------"),
               SizedBox(height: 40,),
            Row(
              children: [
                SizedBox(width: 20,),
                Text("Already have an account ?",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
                // SizedBox(width: 5,),
                InkWell(
                  onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Ragisrtationform(),));},
                  child: Text("Ragister Now",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.amber
                  ),),
                )
              ],
            )


          ],
        ),
    );
  }
}