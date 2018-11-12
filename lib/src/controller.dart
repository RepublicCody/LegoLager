part of legolager;

class Lagercontroller{

  Lagermodel _model = new Lagermodel();

  Lagerview _view = new Lagerview();


  Stein st1 = new Stein(123456789, 136712, "test1", "1x2x3", "Kiste 3", "gelb", 2);
  Stein st2 = new Stein(223456789, 236712, "test2", "1x2x3", "Kiste 42", "gelber", 790);
  Stein st3 = new Stein(323456789, 336712, "test3", "1x2x3", "Kiste 7", "am gelbesten", 9000);
  Stein st4 = new Stein(423456789, 436712, "test4", "1x2x3", "Kiste 1", "scheiße gelb", 0);







  Lagercontroller(){
    _view.generateHeader();
    _view.generateMainPage();
    _view.generateNewBrick();
    querySelector('#mainpageAddNewBrickButton').onClick.listen((MouseEvent e){gotoNewBrick();});
    querySelector('#mainpageSearchButton').onClick.listen(mainpageSuche);

    querySelector('#speichernNewBrick').onClick.listen((MouseEvent e){createNewBrick();});
    querySelectorAll('.anzeigeButtonBearbeiten').onClick.listen(selectBrickToEdit);

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

    ind = querySelector('#masseNewBrick');
    String masse = ind.value;

    ind = querySelector('#lagerortNewBrick');
    String lagerort = ind.value;

    ind = querySelector('#farbeNewBrick');
    String farbe = ind.value;

    ind = querySelector('#anzahlNewBrick');
    int anzahl = int.tryParse(ind.value);

    Stein stone = new Stein(elementnummer, designnummer, name, masse, lagerort, farbe, anzahl);

//    _model.addNewBrickInFile(stone);

    _model.addStein(stone);
    //querySelector('#kopfzeile').text = stone.name;
  }

  void mainpageSuche(MouseEvent e){
    int ergebnisAnzahl;
    String tmp = "";
    List<Stein> l = [];
    bool suchInhalt = false;
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

    if(suchInhalt == true){

      ergebnisAnzahl = 3;
      l.add(st1);
      l.add(st2);
      l.add(st3);
      _view.generateAnzeige(ergebnisAnzahl);
      if(ergebnisAnzahl == 1)querySelector('#anzeigeErgebnis').text = ergebnisAnzahl.toString() + " Ergebnis für \"" + tmp + "\"";
      else querySelector('#anzeigeErgebnis').text = ergebnisAnzahl.toString() + " Ergebnisse für \"" + tmp + "\"";
      fillAnzeige(l, ergebnisAnzahl);
      gotoAnzeige();
    }
  }

  void fillAnzeige(List<Stein> suche, int ergebnisAnzahl){
    int p = 0;
    for (int x = 0; x < ergebnisAnzahl; x++){
      querySelector('#elementnummertdr_${x}').text = suche[x].elementnummer.toString();
      querySelector('#designnummertdr_${x}').text = suche[x].designnummer.toString();
      querySelector('#nametdr_${x}').text = suche[x].name.toString();
      querySelector('#farbetdr_${x}').text = suche[x].farbe.toString();
      querySelector('#massetdr_${x}').text = suche[x].masse.toString();
      querySelector('#lagerorttdr_${x}').text = suche[x].lagerort.toString();
      querySelector('#anzahltdr_${x}').text = suche[x].anzahl.toString();
    }
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