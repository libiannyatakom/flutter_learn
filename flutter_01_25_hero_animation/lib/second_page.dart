import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen[50],
      appBar: AppBar(
        title: Text('Second Page', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Hero(
          tag: 'pp',
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: SizedBox(
              width: 300,
              height: 300,
              child: Image(
                fit: BoxFit.cover,
                image: NetworkImage(
                  'https://www.balisafarimarinepark.com/wp-content/uploads/2018/05/Tiger-1024x768.jpg',
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
