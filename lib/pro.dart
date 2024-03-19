import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class profilepage extends StatefulWidget {
  const profilepage({Key? key}) : super(key: key);

  @override
  State<profilepage> createState() => _profilepageState();
}

class _profilepageState extends State<profilepage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
      ),
      backgroundColor: Colors.teal,
      body: Column(
        children: [
          Align(
            alignment: Alignment.center,
          ),
          CircleAvatar(radius: 85,
            backgroundImage: AssetImage('images/Capture.PNG',),

          ),
          SizedBox(
            height: 24,
          ),
          Text('Sturo Gojo',
              style: TextStyle(fontSize: 45, color: Colors.white)),
          SizedBox(
            height: 24,
          ),
          Text('9967662431'),
          SizedBox(
            height: 24,
          ),
          TextField(

            style: TextStyle(
              color: Colors.white,
            ),
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(40),
                ),
                hintText: 'Enter the text'),
          ),
          SizedBox(
            height: 24,
          ),
          TextField(
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(40),
                ),
                hintText: 'Enter the text'),
          ),
        ],
      ),
    );
  }
}
