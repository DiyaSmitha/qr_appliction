import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:qrappliction/img.dart';

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
              Icon(
                Icons.person_pin,
                size: 150,
                color: Colors.white,
              ),
              SizedBox(height: 24),
              QrImageView(
                data: '1234567890',
                version: QrVersions.auto,
                size: 200.0,
              ),
              SizedBox(height: 24),
              ElevatedButton(onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Impage(),));
              }, child: Text('Scan Me'))
            ],
          )),
    );
  }


}
