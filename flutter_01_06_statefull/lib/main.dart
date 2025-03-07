import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Stateful Widget Demo')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '$number',
                style: TextStyle(fontSize: 10 + number.toDouble()),
              ),
              FilledButton(onPressed: submitButton, child: Text('Counter')),
            ],
          ),
        ),
      ),
    );
  }

  void submitButton() {
    setState(() {
      // number = number + 1;
      number += 1;
    });
  }
}
