import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Main Page - Learn Media Query')),
      body: Column(
        children: [
          Container(
            color: Colors.red,
            width: MediaQuery.of(context).size.width / 3,
            height: MediaQuery.of(context).size.height / 3,
          ),
          Row(
            children: [
              (MediaQuery.of(context).orientation == Orientation.portrait)
                  ? Column(children: generateContainer())
                  : Row(children: generateContainer()),
            ],
          ),
        ],
      ),
    );
  }

  List<Widget> generateContainer() {
    return [
      Container(color: Colors.green, width: 100, height: 100),
      Container(color: Colors.yellow, width: 100, height: 100),
      Container(color: Colors.blue, width: 100, height: 100),
    ];
  }
}
