import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Hello'), backgroundColor: Colors.blue),
        body: Center(
          child: Container(
            color: Colors.lightBlue,
            width: 150,
            height: 120,
            child: Text(
              'Hello World Application Test Max Lines 2',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w700,
                fontSize: 20
              ),
            ),
          ),
        ),
      ),
    );
  }
}
