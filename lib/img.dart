import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:qrappliction/pro.dart';

class Impage extends StatefulWidget {
  const Impage({Key? key}) : super(key: key);

  @override
  State<Impage> createState() => _ImpageState();
}

class _ImpageState extends State<Impage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(),
      body: Column(
        children: [
          MobileScanner(
            // fit: BoxFit.contain,
            onDetect: (capture) {
              final List<Barcode> barcodes = capture.barcodes;
              final Uint8List? image = capture.image;
              for (final barcode in barcodes) {
                debugPrint('Barcode found! ${barcode.rawValue}');
              }
            },
          ),
          SizedBox(height: 24,),
          TextField(decoration: InputDecoration(border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(36)
          ))),
          SizedBox(height: 24),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => profilepage(),
                  ));
            },
            child: Text('Profile'),
          ),
        ],
      ),
    );
  }
}
