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
        appBar: AppBar(title: Text('Learn Stack & Align Widget')),
        body: Stack(
          children: [
            Column(
              children: [
                Flexible(
                  child: Row(
                    children: [
                      Flexible(child: Container(color: Colors.white)),
                      Flexible(child: Container(color: Colors.black12)),
                    ],
                  ),
                ),
                Flexible(
                  child: Row(
                    children: [
                      Flexible(child: Container(color: Colors.black12)),
                      Flexible(child: Container(color: Colors.white)),
                    ],
                  ),
                ),
              ],
            ),
            ListView(
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        'Ini adalah text yang ada di lapisan tengah dari Stack',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        'Ini adalah text yang ada di lapisan tengah dari Stack',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        'Ini adalah text yang ada di lapisan tengah dari Stack',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        'Ini adalah text yang ada di lapisan tengah dari Stack',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        'Ini adalah text yang ada di lapisan tengah dari Stack',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        'Ini adalah text yang ada di lapisan tengah dari Stack',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        'Ini adalah text yang ada di lapisan tengah dari Stack',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Align(
              alignment: Alignment(.9, .9),
              child: MaterialButton(onPressed: () {}, color: Colors.amber, child: Text('My Button')),
            )
          ],
        ),
      ),
    );
  }
}
