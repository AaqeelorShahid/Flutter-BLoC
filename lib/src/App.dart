import "package:flutter/material.dart";

import '../bloc/Provider.dart';
import "../screens/login_screen.dart";

class App extends StatelessWidget {
  Widget build(BuildContext context) {
    return Provider(
        child: MaterialApp(
      title: "BLoC",
      home: Scaffold(
        body: LoginScreen(),
      ),
    ));
  }
}
