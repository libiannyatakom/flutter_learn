import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    TabBar myTabBar = TabBar(
      labelColor: Colors.white,
      indicator: BoxDecoration(
        color: Colors.blue,
        border: Border(bottom: BorderSide(color: Colors.white, width: 5)),
      ),
      indicatorSize: TabBarIndicatorSize.tab,
      // indicatorColor: Colors.yellow,
      tabs: [
        Tab(icon: Icon(Icons.chat), text: 'Chat', iconMargin: EdgeInsets.only(left: 10, right: 10),),
        Tab(
          icon: Image(
            image: AssetImage('assets/images/wallet.png'),
            fit: BoxFit.cover,
            height: 24,
          ),
          text: 'Wallet',
        ),
        Tab(icon: Icon(Icons.history), text: 'History'),
      ],
    );

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text('Learn Tab Bar'),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(myTabBar.preferredSize.height),
            child: Container(color: Colors.amber, child: myTabBar),
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text('Tab 1')),
            Center(child: Text('Tab 2')),
            Center(child: Text('Tab 3')),
          ],
        ),
      ),
    );
  }
}
