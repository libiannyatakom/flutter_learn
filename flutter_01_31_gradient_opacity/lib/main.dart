import 'package:flutter/material.dart';

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
        backgroundColor: Colors.red,
        appBar: AppBar(title: Text('Learn Gradint Opacity')),
        body: Column(
          children: [
            Spacer(),
            Center(
              child: Image(
                width: 300,
                image: AssetImage('assets/wonderful-indonesia.jpg'),
              ),
            ),
            Spacer(),
            Center(
              child: ShaderMask(
                shaderCallback: (rectangle) {
                  return LinearGradient(
                    colors: [Colors.white, Colors.transparent],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ).createShader(
                    Rect.fromLTRB(0, 0, rectangle.width, rectangle.height),
                  );
                },
                blendMode: BlendMode.dstIn,
                child: Image(
                  width: 400,
                  image: AssetImage('assets/wonderful-indonesia.jpg'),
                ),
              ),
            ),
            Spacer()
          ],
        ),
      ),
    );
  }
}
