import 'package:flutter/material.dart';
import 'colorful_button.dart';

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
        appBar: AppBar(
          backgroundColor: Colors.amberAccent,
          title: Text('Colorful Buttons'),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ColorfulButton(
                primary: Colors.pink,
                secondary: Colors.blue,
                icon: Icons.adb_outlined,
              ),
              ColorfulButton(
                primary: Colors.amber,
                secondary: Colors.red,
                icon: Icons.comment_outlined,
              ),
              ColorfulButton(
                primary: Colors.green,
                secondary: Colors.purple,
                icon: Icons.computer,
              ),
              ColorfulButton(
                primary: Colors.blue,
                secondary: Colors.orange,
                icon: Icons.contact_phone,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
