import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:qrappliction/login.dart';
import 'package:qrappliction/pro.dart';
import 'package:qrappliction/qr.dart';
import 'package:http/http.dart' as http;
class registor extends StatefulWidget {
  const registor({Key? key}) : super(key: key);

  @override
  State<registor> createState() => _registorState();
}

class _registorState extends State<registor> {
  TextEditingController rollno = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  void regi()async{
    print(rollno.text);
    print(name.text);
    print(email.text);
    print(password.text);
    Uri uri=Uri.parse('https://scnner-web.onrender.com/api/register');
    var response = await http.post(uri,
    headers:<String,String>{
      'Content-Type':'application/json; charset=UTF-8',
    },
    body: jsonEncode({
      'rollno':rollno.text,
      'name':name.text,
      'email':email.text,
       'password':password.text
    }));
    print(response.statusCode);
    print(response.body);
    var data =jsonDecode(response.body);
    print(data["message"]);
    if(response.statusCode==200){
      Navigator.push(context, MaterialPageRoute(builder: (context) => index() ,));
    }
    else{ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: data["message"]));}

  }

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
            controller: rollno,
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
            controller: name,
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
            controller: email,
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
            controller: password,
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
              regi();
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
