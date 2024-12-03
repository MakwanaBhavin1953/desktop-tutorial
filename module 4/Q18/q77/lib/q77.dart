import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Q77 extends StatefulWidget {
  const Q77({super.key});

  @override
  State<Q77> createState() => _Q77State();
}

class _Q77State extends State<Q77> {

  TextEditingController phonecontroller = TextEditingController();

  Future<void> myPhoneCall(String? phonenumber) async {
    Uri phoneUri = Uri(scheme: "tel", path: phonenumber);
    if (await canLaunchUrl(phoneUri)) {
      await launchUrl(phoneUri);
    }
  }


  Future<void> mySMS(String? phonenumber) async {
    Uri phoneUri = Uri(scheme: "sms", path: phonenumber);
    if (await canLaunchUrl(phoneUri)) {
      await launchUrl(phoneUri);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "URL Launcher",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.teal,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: TextField(
              controller: phonecontroller,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter phone number",
                labelText: "Phone Number",
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  myPhoneCall(phonecontroller.text.toString());
                },
                child: Text("Call"),
              ),
              SizedBox(
                width: 15,
              ),
              ElevatedButton(
                onPressed: () {
                  mySMS(phonecontroller.text.toString());
                },
                child: Text("Message"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}