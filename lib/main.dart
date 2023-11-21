// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_demo1/screens/home_screen.dart';



final List<Map<String, dynamic>> listHashtags = [
    {
      'name': '#flutter',
    },
    {
      'name': '#dart',
    },
];

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
       home:  HomeScreen(),
    );
  }
}