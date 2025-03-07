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
  List<Widget> widgets = [];
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Listview Demo')),
        body: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FilledButton(
                  onPressed: () {
                    setState(() {
                      widgets.add(
                        Text(
                          'Data ke-$counter',
                          style: TextStyle(fontSize: 28),
                        ),
                      );
                      counter++;
                    });
                  },
                  child: Text('Add Data'),
                ),
                OutlinedButton(
                  onPressed: () {
                    setState(() {
                      if (counter > 1) {
                        widgets.removeLast();
                        counter--;
                      }
                    });
                  },
                  child: Text('Delete Data'),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: widgets,
            ),
          ],
        ),
      ),
    );
  }
}
