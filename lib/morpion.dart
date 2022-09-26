import 'package:flutter/material.dart';
import 'morpion/morpion.dart';

class Morpion extends StatefulWidget {

  @override
  State<Morpion> createState() => _Morpion();

}

class _Morpion extends State<Morpion>{

  Morpionn morpion = new Morpionn();

  void _checkcase(index){
    setState(() {
      morpion.checkcase(index);
    });
  }
  
  void rejouer(int tour){
    setState(() {
      morpion.setTour(tour);
      morpion.resetValeur();
    });
  }



  @override
  Widget build(BuildContext context) {

    if (morpion.checkvitoire() == true){

      return Scaffold(
          body: Column(
            children: [
              Container(

                child: Text("${morpion.getVainqueur()}"),
              ),
              Container(
                child: ElevatedButton(onPressed: () => rejouer(0), child: Text("Rejouer")),
              )
            ],
          ),
      );
    }
    if(morpion.getTour() > 8 && morpion.getVictoire() == false){
      return Scaffold(
        body:  Column(
          children: [
            Container(
              child: Text("Match null frr"),
            ),
            Container(
              child: ElevatedButton(onPressed: () => rejouer(0), child: Text("Rejouer")),
            )
          ],
        )
      );

    } else {
      return Scaffold(
        body:  GridView.count(
          crossAxisCount: 3,
          children: List.generate(morpion.getCase().length, (index)
          {
            return Center(
              child: ElevatedButton(onPressed: () => _checkcase(index), child: Text("${morpion.getCase()[index].toString()}")),
            );
          }
          ),
        ),
      );
    }

  }
}