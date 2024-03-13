import 'package:flutter/material.dart';
import 'package:qrappliction/login.dart';
import 'package:qrappliction/qr.dart';

class registor extends StatefulWidget {
  const registor({Key? key}) : super(key: key);

  @override
  State<registor> createState() => _registorState();
}

class _registorState extends State<registor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(backgroundColor: Colors.teal),
      body: Align(
        alignment: Alignment.bottomLeft,
        child: Column(children: [
          Align(
            alignment: Alignment.center,
          ),
          Text(
            'Registration',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
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
          SizedBox(height: 20),
          TextField(
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
          SizedBox(height: 20),
          TextField(
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
          SizedBox(height: 20),
          TextField(
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
          SizedBox(height: 20),
          ElevatedButton(
            style: TextButton.styleFrom(
              primary: Colors.white,
              backgroundColor: Colors.teal,
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => index(),
                  ));
            },
            child: Text(
              '       REGISTOR        ',
            ),
          ),
        ]),
      ),
    );
  }
}
