class Morpionn{
  List<String> _case = new List.generate(9, (index) => " ");
  bool victoire = false;
  int tour = 0;
  String vainqueur = "";

  String getVainqueur(){
    return this.vainqueur;
  }

  List<String> getCase(){
    return this._case;
  }

int getTour(){
    return this.tour;
}

  void setTour(int tour){
    this.tour = tour;
  }


  bool checkvitoire(){
    bool win = false;
    if(
    //ligne X
        _case[0] == "X" && _case[1] == "X" && _case[2] == "X" ||
        _case[3] == "X" && _case[4] == "X" && _case[5] == "X" ||
        _case[6] == "X" && _case[7] == "X" && _case[8] == "X" ||
            // colonne X
        _case[0] == "X" && _case[3] == "X" && _case[6] == "X" ||
            _case[1] == "X" && _case[4] == "X" && _case[7] == "X" ||
            _case[2] == "X" && _case[5] == "X" && _case[8] == "X" ||
    //Diagonal X
            _case[0] == "X" && _case[4] == "X" && _case[8] == "X" ||
            _case[2] == "X" && _case[4] == "X" && _case[6] == "X" ||
            //ligne O
            _case[0] == "O" && _case[1] == "O" && _case[2] == "O" ||
            _case[3] == "O" && _case[4] == "O" && _case[5] == "O" ||
            _case[6] == "O" && _case[7] == "O" && _case[8] == "O" ||
            // colonne O
            _case[0] == "O" && _case[3] == "O" && _case[6] == "O" ||
            _case[1] == "O" && _case[4] == "O" && _case[7] == "O" ||
            _case[2] == "O" && _case[5] == "O" && _case[8] == "O" ||
            //Diagonal X
            _case[0] == "O" && _case[4] == "O" && _case[8] == "O" ||
            _case[2] == "O" && _case[4] == "O" && _case[6] == "O"
    ){
      win = true;
      if(tour % 2 == 0){
        vainqueur = "Le joueur O a gagner";
      } else {
        vainqueur = "Le joueur X a gagner";
      }

    }
    return victoire = win;
  }




  void checkcase(int index){

  if(verifcase(index) == true){
    if(tour % 2 == 0 ){
      _case[index] = "X";
      tour++;
    } else {
      _case[index] = "O";
      tour++;
    }
  }

  }



  bool verifcase(int index){
    bool verifcasee = false;

    if(_case[index] == " "){
      verifcasee = true;
      print(verifcasee);
    }

    return verifcasee;
  }



  bool getVictoire(){
    return this.victoire;
  }

  void resetValeur(){
    for(int i = 0; i < _case.length; i++){
        _case[i] = " ";
    }
  }

}