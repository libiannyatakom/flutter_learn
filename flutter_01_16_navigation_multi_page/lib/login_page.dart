import 'package:flutter/material.dart';

import 'home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login Page'),),
      body: Center(
        child: MaterialButton(
          onPressed: () {
            Navigator.pushReplacement(context, MaterialPageRoute(
                builder: (context) {
                  return HomePage();
                }
            ));
          },
          child: Text('Login')),
      ),
    );
  }
}
