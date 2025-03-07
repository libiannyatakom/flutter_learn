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
  String message = 'This is text';

  void buttonPressed() {
    setState(() {
      message = 'Button pressed';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Anonymous Method'),
          backgroundColor: Colors.amber,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(message),
              FilledButton(onPressed: buttonPressed, child: Text('Submit')),
              OutlinedButton(
                child: Text('Submit by anonymous method'),
                onPressed: () { // Anonymous method
                  setState(() {
                    message = 'Button pressed by anonymous method';
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
