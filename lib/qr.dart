import 'package:flutter/material.dart';

class qrpage extends StatefulWidget {
  const qrpage({Key? key}) : super(key: key);

  @override
  State<qrpage> createState() => _qrpageState();
}

class _qrpageState extends State<qrpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(backgroundColor: Colors.teal),
      body: Align(
          alignment: Alignment.center,
          child: Column(
            children: [
             Icon(Icons.person_pin,size: 150,color: Colors.white,)
            ],
          )),
    );
  }
}
