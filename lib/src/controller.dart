part of legolager;

class Lagercontroller{

  Lagermodel _model = new Lagermodel();

  Lagerview _view = new Lagerview();



  Lagercontroller(){
    _view.generateHeader();
    _view.generateMainPage();
    _view.generateNewBrick();
    querySelector('#mainpageAddNewBrickButton').onClick.listen((MouseEvent e){gotoNewBrick();});
    querySelector('#mainpageSearchButton').onClick.listen(mainpageSuche);

    querySelector('#speichernNewBrick').onClick.listen((MouseEvent e){createNewBrick();});
    querySelector('#sucheAnzeige').onClick.listen(selectBrickToEdit);

    //Startseite
    querySelector('#anzeigeButtonMainpage').onClick.listen((MouseEvent e){gotoMainpage();});
    querySelector('#newBrickButtonMainpage').onClick.listen((MouseEvent e){gotoMainpage();});

    //mainpage

    //newBrick

    //editBrick

    //head

    //anzeige

  }

  void createNewBrick(){
    InputElement ind = querySelector('#elementnummerNewBrick');
    int elementnummer = int.tryParse(ind.value);

    ind = querySelector('#designnummerNewBrick');
    int designnummer = int.tryParse(ind.value);

    ind = querySelector('#nameNewBrick');
    String name = ind.value;

    ind = querySelector('#laengeNewBrick');
    int laenge = int.tryParse(ind.value);

    ind = querySelector('#breiteNewBrick');
    int breite = int.tryParse(ind.value);

    ind = querySelector('#hoeheNewBrick');
    int hoehe = int.tryParse(ind.value);

    ind = querySelector('#farbeNewBrick');
    String farbe = ind.value;

    ind = querySelector('#anzahlNewBrick');
    int anzahl = int.tryParse(ind.value);

    Stein stone = new Stein(elementnummer, designnummer, name, laenge, breite, hoehe, farbe, anzahl);

//    _model.addNewBrickInFile(stone);

    _model.addStein(stone);
    //querySelector('#kopfzeile').text = stone.name;
  }

  void mainpageSuche(MouseEvent e){
    int ergebnisAnzahl = 3;
    String tmp = "";
    bool suchInhalt = false;
    _view.generateAnzeige(ergebnisAnzahl);
    InputElement iE = querySelector('#mainpageSuchfeldElementnummer');
    InputElement iD = querySelector('#mainpageSuchfeldDesignnummer');
    InputElement iN = querySelector('#mainpageSuchfeldName');

    if(iE.value != ""){
      tmp = iE.value;
      suchInhalt = true;
    }
    else if(iD.value != ""){
      tmp = iD.value;
      suchInhalt = true;
    }
    else if(iN.value != ""){
      tmp = iN.value;
      suchInhalt = true;
    }
    if(ergebnisAnzahl == 1)querySelector('#anzeigeErgebnis').text = ergebnisAnzahl.toString() + " Ergebnis für \"" + tmp + "\"";
    else querySelector('#anzeigeErgebnis').text = ergebnisAnzahl.toString() + " Ergebnisse für \"" + tmp + "\"";
    if(suchInhalt == true)gotoAnzeige();
  }


  void selectBrickToEdit(MouseEvent e) {
    if (e.target is Element){
      HtmlElement element = e.target;
      RegExp re = new RegExp("anzeigeButton_([0-9]+)");
      if (re.hasMatch(element.id)) {
        Match m = re.firstMatch(element.id);
        int nummer = int.parse(m.group(1)) - 1;//int.parse(m.group(1)));
        InputElement ind = querySelector('#elementnummertdr_$nummer');
        int elem = int.tryParse(ind.value);
        _view.generateEditBrick(_model.getStone(elem));
      } else {

      }
      gotoEditBrick();
    }
  }

  void gotoMainpage(){
    _view.showMainpage();
  }

  void gotoNewBrick(){
    _view.showNewBrick();
  }

  void gotoAnzeige(){
    _view.showAnzeige();
  }

  void gotoEditBrick(){
    _view.showEditBrick();
  }
}