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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Learn Image Widget')),
        body: Center(
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Spacer(),
              Container(
                color: Colors.black,
                width: 200,
                height: 200,
                padding: EdgeInsets.all(3),
                child: Image(
                  image: NetworkImage(
                    "https://cdnpro.eraspace.com/media/catalog/product/m/a/mac_mini_with_m4_silver_1_2.jpg",
                  ),
                  fit: BoxFit.contain,
                ),
              ),
              Spacer(),
              Container(
                color: Colors.green,
                width: 200,
                height: 200,
                alignment: Alignment.center,
                child: Text('No Image', style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              Spacer(flex: 3),
              Container(
                color: Colors.amber,
                width: 200,
                height: 200,
                padding: EdgeInsets.all(5),
                child: Image(
                  image: AssetImage("images/mitsubishi-x-force-1.jpg"),
                  fit: BoxFit.contain,
                  repeat: ImageRepeat.repeatY,
                ),
              ),
              Spacer(flex: 2,)
            ],
          ),
        ),
      ),
    );
  }
}
