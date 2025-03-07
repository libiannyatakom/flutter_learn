import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page', style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings, color: Colors.white),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.exit_to_app, color: Colors.white),
          ),
        ],
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xff0096ff), Color(0xff6610f2)],
              begin: FractionalOffset.topLeft,
              end: FractionalOffset.bottomRight,
            ),
            image: DecorationImage(
              image: AssetImage("images/pattern.png"),
              fit: BoxFit.none,
              repeat: ImageRepeat.repeat,
            ),
          ),
        ),
      ),
      body: Center(
        child: MaterialButton(onPressed: () {
          Navigator.pop(context);
        }, child: Text('Back to Home')),
      ),
    );
  }
}
