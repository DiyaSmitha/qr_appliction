import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:qrappliction/qr.dart';
import 'package:qrappliction/registor.dart';
import 'package:http/http.dart'as http;
class index extends StatefulWidget {
  const index({Key? key}) : super(key: key);

  @override
  State<index> createState() => _indexState();
}

class _indexState extends State<index> {
  TextEditingController rollno =TextEditingController();
  TextEditingController password =TextEditingController();
  void log() async{
    print(rollno.text);
    print(password.text);
    Uri uri=Uri.parse('https://scnner-web.onrender.com/api/login');
    var response = await http.post(uri,
        headers:<String,String>{
        'Content-Type':'application/json; charset=UTF-8',
        },
        body: jsonEncode({
          'rollno':rollno.text,
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
        child: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.center,
            ),
            Text(
              'LOGIN',

              style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: rollno ,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),),
                  enabledBorder:OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white
                    ),
                    borderRadius: BorderRadius.circular(40),) ,

                  hintText: 'Enter the text'),
            ),
            SizedBox(
              height: 25,
            ),
            TextField(
              controller: password,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),),

                  enabledBorder:OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white
                    ),
                    borderRadius: BorderRadius.circular(40),) ,
                  hintText: 'Enter the text'),
            ),
            SizedBox(
              height: 25,
            ),
            ElevatedButton(
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Colors.teal,
              ),
              onPressed: () {


               log();

              },
              child: Text(
                '       Log In        ',
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'do not have an account ?',
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 25,
                ),
                TextButton(onPressed:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => registor() ,));
                }, child: Text('REGISTOR'),),
              ],
            )
          ],
        ),
      ),
    );
  }
}
