import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Learn Tab Bar'),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.comment), text: 'Comments'),
              Tab(
                icon: Image(
                  image: AssetImage('assets/images/wallet.png'),
                  fit: BoxFit.cover,
                  height: 24,
                ),
              ),
              Tab(text: 'News'),
              Tab(icon: Icon(Icons.history)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text('Tab 1')),
            Center(child: Text('Tab 2')),
            Center(child: Text('Tab 3')),
            Center(child: Text('Tab 4')),
          ],
        ),
      ),
    );
  }
}
