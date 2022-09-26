import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatelessWidget {


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Center(
            child: Text("Projet de ouf"),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                margin: const EdgeInsets.only(
                    bottom: 6.0),
                child: ElevatedButton(
                    style:  ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color.alphaBlend(Colors.black45, Colors.purple))),
                    onPressed: (){
                      Navigator.pushNamed(context, '/route2');
                    },
                    child: Text("Morpion")
                )

            ),

            Container(
              margin: const EdgeInsets.only(
                  bottom: 6.0),
              child: ElevatedButton(
                  style:  ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color.alphaBlend(Colors.black45, Colors.purple))),
                  onPressed: (){
                    SystemNavigator.pop();
                    exit(0);
                  },
                  child: Text("Quitter")
              ),
            )

          ],
        ),

      )
    );
  }
}