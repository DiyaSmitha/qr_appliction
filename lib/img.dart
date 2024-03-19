import 'dart:typed_data';
import 'package:http/http.dart'as http;
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
  TextEditingController rollno = TextEditingController();

  void getuser() async {
    Uri uri = Uri.parse('https://scnner-web.onrender.com/api/profile/${rollno
        .text}');
    var response = await http.get(uri,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',});
    print(response.body);
  }

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
          TextField(controller: rollno,
              decoration: InputDecoration(border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(36)
          ))),
          SizedBox(height: 24),
          ElevatedButton(
            onPressed: () {
              getuser();
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
