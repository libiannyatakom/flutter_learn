import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        body: Container(
          margin: EdgeInsets.all(10),
          child: ListView(children: [
            buildCard(Icons.account_box, 'Account Box'),
            buildCard(Icons.adb, 'Android')
          ]),
        ),
      ),
    );
  }

  Card buildCard(IconData iconData, String textData) {
    return Card(
      elevation: 5,
      child: Row(
        children: [
          Container(margin: EdgeInsets.all(5), child: Icon(iconData, color: Colors.green,)),
          Text(textData),
        ]
      ),
    );
  }
}
