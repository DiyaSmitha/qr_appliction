import 'package:flutter/material.dart';
import 'package:qrappliction/registor.dart';

class index extends StatefulWidget {
  const index({Key? key}) : super(key: key);

  @override
  State<index> createState() => _indexState();
}

class _indexState extends State<index> {
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
              onPressed: () {},
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
