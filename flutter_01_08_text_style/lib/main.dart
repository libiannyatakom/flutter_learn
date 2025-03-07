import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('Text Style Demo')),
        body: Center(
          child: Text(
            'This is text',
            style: TextStyle(
              fontFamily: "CrashLanding BB",
              fontSize: 30,
              fontStyle: FontStyle.italic,
              decoration: TextDecoration.overline,
              decorationColor: Colors.red,
              decorationThickness: 5,
              decorationStyle: TextDecorationStyle.wavy
            ),
          ),
        ),
      ),
    );
  }
}
