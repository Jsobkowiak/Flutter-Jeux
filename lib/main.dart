import 'package:flutter/material.dart';
import 'home.dart';
import 'homepage.dart';
import 'morpion.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      routes: <String, WidgetBuilder>{
        '/route1': (BuildContext context) => Home(),
        '/route2': (BuildContext context) => Morpion(),
      },
    );
  }
}

