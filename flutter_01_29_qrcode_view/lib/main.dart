import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Learn QR Code View')),
        body: Center(
          child: QrImageView(
            version: 10,
            backgroundColor: Colors.lightBlue,
            errorCorrectionLevel: QrErrorCorrectLevel.H,
            padding: EdgeInsets.all(10),
            size: 300,
            data: 'https://www.youtube.com/@libyanbe',
          ),
        ),
      ),
    );
  }
}
