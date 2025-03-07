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
        appBar: AppBar(
          title: Text('Learn Container'),
          backgroundColor: Colors.lightGreen,
        ),
        body: Container(
          color: Colors.red,
          margin: EdgeInsets.all(3),
          padding: EdgeInsets.fromLTRB(7, 9, 11, 13),
          child: Container(
            // margin: EdgeInsets.only(left: 10, right: 10),
            // padding: EdgeInsets.all(7),
            // color: Colors.blue,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(9),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[Colors.amber, Colors.black12, Colors.blue, Colors.deepOrange, Colors.teal],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
