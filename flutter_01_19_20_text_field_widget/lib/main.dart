import 'package:flutter/cupertino.dart';
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
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Learn Text Field Widget')),
        body: Container(
          padding: EdgeInsets.all(9),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(controller.text),
              TextField(
                decoration: InputDecoration(
                  fillColor: Colors.lightBlue[50],
                  filled: true,
                  icon: Icon(Icons.adb),
                  labelText: 'Full Name',
                  prefixIcon: Icon(Icons.account_circle),
                  prefixIconColor: Colors.lightBlue,
                  suffix: IconButton(
                    onPressed: () {},
                    icon: Icon(CupertinoIcons.eye),
                  ),
                  hintText: 'Your Name',
                  hintStyle: TextStyle(fontSize: 12),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7),
                  ),
                ),
                obscureText: true,
                maxLength: 20,
                controller: controller,
                onChanged: (value) {
                  setState(() {
                    //
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
