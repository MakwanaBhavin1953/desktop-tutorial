import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';


class Q72 extends StatefulWidget {
  const Q72({super.key});

  @override
  State<Q72> createState() => _Q72State();
}

class _Q72State extends State<Q72> {


  void _checkAndRequestPermission()async{
    if (await Permission.phone.isDenied) {
      _showPermissionDialog();
    }
  }


void _showPermissionDialog(){
  showDialog(
    context: context, 
    builder: (context) {
      return AlertDialog(
        title: Text("Phone Call Permission"),
        content: Text(
          'This app requires phone call permission to function. Please allow it in the next prompt.'
        ),
        actions: [
          TextButton(onPressed: () {
            Navigator.of(context).pop();
          }, 
          child: Text("Deny")),
          TextButton(
            onPressed: ()async {
              Navigator.of(context).pop();
              PermissionStatus status =await Permission.phone.request();
              if (status.isGranted) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Permission Granted!'),));
              }else{
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Permission Granted!'),)
                );
              }

            },
             child: Text("Allpw"))
        ],
      );
    },);
}
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _showPermissionDialog();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Phone Call"),
      ),
      body: Center(
        child: Text("Welcome! Permission status will be checked.",textAlign: TextAlign.center,style: TextStyle(fontSize: 18),),
      ),
    );
  }
}