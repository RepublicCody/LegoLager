part of legolager;

class Lagercontroller{

  Lagermodel _model = new Lagermodel();

  Lagerview _view = new Lagerview();



  Lagercontroller(){
    _view.generateHeader();
    _view.generateMainPage();
    _view.generateNewBrick();
    _view.generateAnzeige(3);
    querySelector('#addNewBrickButtonMainpage').onClick.listen((MouseEvent e){gotoNewBrick();});
    //querySelector('#addNewBrickButtonMainpage').onClick.listen((MouseEvent e){gotoAnzeige();});
    querySelector('#speichernNewBrick').onClick.listen((MouseEvent e){createNewBrick();});
  }

  void createNewBrick(){
    InputElement ind = querySelector('#elementnummer');
    int elementnummer = int.tryParse(ind.value);

    ind = querySelector('#designnummer');
    int designnummer = int.tryParse(ind.value);

    ind = querySelector('#name');
    String name = ind.value;

    ind = querySelector('#laenge');
    int laenge = int.tryParse(ind.value);

    ind = querySelector('#breite');
    int breite = int.tryParse(ind.value);

    ind = querySelector('#hoehe');
    int hoehe = int.tryParse(ind.value);

    ind = querySelector('#farbe');
    String farbe = ind.value;

    ind = querySelector('#anzahl');
    int anzahl = int.tryParse(ind.value);

    Stein stone = new Stein(elementnummer, designnummer, name, laenge, breite, hoehe, farbe, anzahl);

//    _model.addNewBrickInFile(stone);

    _model.checkForSimelarBricks(stone);
    //querySelector('#kopfzeile').text = stone.name;
  }

  void gotoNewBrick(){
    _view.showNewBrick();
  }

  void gotoAnzeige(){
    _view.showAnzeige();
  }
}