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
        appBar: AppBar(title: Text('Learn Ink Well Custom Button')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MaterialButton(
                color: Colors.amber,
                child: Text('Raised Button'),
                onPressed: () {},
              ),
              Material(
                elevation: 3,
                borderRadius: BorderRadius.circular(5),
                child: Container(
                  width: 150,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    gradient: LinearGradient(
                        colors: [Colors.purple, Colors.pink],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter
                    ),
                  ),
                  child: Material(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(5),
                      onTap: () {},
                      splashColor: Colors.amberAccent,
                      child: Center(
                        child: Text('My Button', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
