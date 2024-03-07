import 'package:flutter/material.dart';

import 'home_screen.dart';

void main() {
  //1571020100
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //1571020100
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    ); // MaterialApp
  }
}

