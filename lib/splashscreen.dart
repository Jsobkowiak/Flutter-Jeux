import 'dart:async';

import 'package:flutter/material.dart';
import 'home.dart';
import 'homepage.dart';


class SplashScreenState extends State<HomePage> {
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 5),
            () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: ((context) => Home()))));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Text("Chargement en cours ..")
          )
        ],
      ),
    );
  }
}