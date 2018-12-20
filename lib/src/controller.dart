part of legolager;

class Lagercontroller{

  Lagermodel _model = new Lagermodel();

  Lagerview _view = new Lagerview();


  Stein st1 = new Stein(123456789, 136712, "test1", "1x2x3", "Kiste 3", "gelb", "images/3001.png", 2, false);
  Stein st2 = new Stein(223456789, 236712, "test2", "1x2x3", "Kiste 42", "gelber", "images/3001.png", 790, true);
  Stein st3 = new Stein(323456789, 336712, "test3", "1x2x3", "Kiste 7", "am gelbesten", "images/3001.png", 9000, false);
  Stein st4 = new Stein(423456789, 436712, "test4", "1x2x3", "Kiste 1", "scheiße gelb", "images/3001.png", 0, false);







  Lagercontroller(){
    _view.generateHeader();
    _view.generateMainPage();
    _view.generateNewBrick();
    _view.generateAnzeige(1);
    _view.generateEditBrick();
    fillMainpageSteine();
    fillEditBrick(st1);
    //mainpage

    querySelector('#mainpageAddNewBrickButton').onClick.listen((MouseEvent e){gotoNewBrick();});
    querySelector('#mainpageSearchButton').onClick.listen(mainpageSuche);

    //newBrick

    querySelector('#newBrickSpeichern').onClick.listen((MouseEvent e){createNewBrick();});

    //editBrick

    querySelector('#editBrickSpeichern').onClick.listen((MouseEvent e){editBrick();});

    //head

    querySelector('#headerButtonMainpage').onClick.listen((MouseEvent e){gotoMainpage();});

    //anzeige

    querySelector('#anzeigeSearchButton').onClick.listen(anzeigeSuche);
/*
    var anzeigen = querySelector('#anzeige').querySelectorAll('.anzeigebearbeitenbutton');
    anzeigen.forEach((anzeige){
      anzeige.onClick.listen(selectBrickToEdit);
    });
*/
    querySelector('#anzeigeButtonBearbeiten_0').onClick.listen((MouseEvent e){print('Kekse');});
    //querySelectorAll('#anzeige .anzeigebearbeitenbutton').onClick.listen(selectBrickToEdit);
    //querySelectorAll('.anzeigeButtonBearbeiten').onClick.listen((MouseEvent e){print('Kekse');});

  }

  void createNewBrick(){
    InputElement ind = querySelector('#newBrickElementnummer');
    int elementnummer = int.tryParse(ind.value);

    ind = querySelector('#newBrickDesignnummer');
    int designnummer = int.tryParse(ind.value);

    ind = querySelector('#newBrickName');
    String name = ind.value;

    ind = querySelector('#newBrickMasse');
    String masse = ind.value;

    ind = querySelector('#newBrickLagerort');
    String lagerort = ind.value;

    ind = querySelector('#newBrickFarbe');
    String farbe = ind.value;

    String bild = "images/$elementnummer.png";

    ind = querySelector('#newBrickAnzahl');
    int anzahl = int.tryParse(ind.value);

    ind = querySelector('#newBrickNachbestellen');
    bool nachbestellen;
    if(ind.toString() == 'true')nachbestellen = true;
    else nachbestellen = false;

    Stein stone = new Stein(elementnummer, designnummer, name, masse, lagerort, farbe, bild, anzahl, nachbestellen);

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
      _model.liste.add(st1);
      _model.liste.add(st2);
      _model.liste.add(st3);
      _view.generateAnzeige(ergebnisAnzahl);
      if(ergebnisAnzahl == 1)querySelector('#anzeigeErgebnis').text = " " + ergebnisAnzahl.toString() + " Ergebnis für \"" + tmp + "\"";
      else querySelector('#anzeigeErgebnis').text = " " + ergebnisAnzahl.toString() + " Ergebnisse für \"" + tmp + "\"";
      fillAnzeige(l, ergebnisAnzahl);
      gotoAnzeige();
    }
  }

  void anzeigeSuche(MouseEvent e){
    int ergebnisAnzahl;
    String tmp = "";
    List<Stein> l = [];
    bool suchInhalt = false;
    InputElement iE = querySelector('#anzeigeSuchfeldElementnummer');
    InputElement iD = querySelector('#anzeigeSuchfeldDesignnummer');
    InputElement iN = querySelector('#anzeigeSuchfeldName');

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
      _model.liste.add(st1);
      _model.liste.add(st2);
      _model.liste.add(st3);
      _view.generateAnzeige(ergebnisAnzahl);
      if(ergebnisAnzahl == 1)querySelector('#anzeigeErgebnis').text = " " + ergebnisAnzahl.toString() + " Ergebnis für \"" + tmp + "\"";
      else querySelector('#anzeigeErgebnis').text = " " + ergebnisAnzahl.toString() + " Ergebnisse für \"" + tmp + "\"";
      fillAnzeige(l, ergebnisAnzahl);
      gotoAnzeige();
    }
  }

  /**
   *  T
   */
  void fillAnzeige(List<Stein> suche, int ergebnisAnzahl){
    for (int x = 0; x < ergebnisAnzahl; x++){
      querySelector('#elementnummertdr_${x}').text = suche[x].elementnummer.toString();
      querySelector('#designnummertdr_${x}').text = suche[x].designnummer.toString();
      querySelector('#nametdr_${x}').text = suche[x].name.toString();
      querySelector('#farbetdr_${x}').text = suche[x].farbe.toString();
      querySelector('#massetdr_${x}').text = suche[x].masse.toString();
      querySelector('#lagerorttdr_${x}').text = suche[x].lagerort.toString();
      querySelector('#bild_${x}').style.backgroundImage = 'url(${suche[x].bild.toString()})';
      if(suche[x].nachbestellen == true)querySelector('#nachbestellentdr_${x}').setAttribute('checked', '');
      querySelector('#anzahltdr_${x}').text = suche[x].anzahl.toString();
    }
  }

  void fillMainpageSteine(){
    int alleSteine = 0;
    int verschiedeneSteine = 0;

    verschiedeneSteine = 42;
    alleSteine = 1337;

    querySelector('#mainpageAnzahlAlleSteineAusgabe').text = alleSteine.toString();
    querySelector('#mainpageAnzahlVerschiedeneSteineAusgabe').text = verschiedeneSteine.toString();
  }
  /**
   *
   */
  void fillEditBrick(Stein stone){
        querySelector("#editBrickElementnummer").setAttribute('value', stone.elementnummer.toString());
        querySelector("#editBrickElementnummerDivOldRight").text = stone.elementnummer.toString();

        querySelector("#editBrickDesignnummer").setAttribute('value', stone.designnummer.toString());
        querySelector("#editBrickDesignnummerDivOldRight").text = stone.designnummer.toString();

        querySelector("#editBrickName").setAttribute('value', stone.name.toString());
        querySelector("#editBrickNameDivOldRight").text = stone.name.toString();

        querySelector("#editBrickFarbe").setAttribute('value', stone.farbe.toString());
        querySelector("#editBrickFarbeDivOldRight").text = stone.farbe.toString();

        querySelector("#editBrickMasse").setAttribute('value', stone.masse.toString());
        querySelector("#editBrickMasseDivOldRight").text = stone.masse.toString();

        querySelector("#editBrickLagerort").setAttribute('value', stone.lagerort.toString());
        querySelector("#editBrickLagerortDivOldRight").text = stone.lagerort.toString();

        if(stone.nachbestellen == true)querySelector('#editBrickNachbestellenOldRight').setAttribute('checked', '');

        querySelector("#editBrickAnzahl").setAttribute('value', stone.anzahl.toString());
        querySelector("#editBrickAnzahlDivOldRight").text = stone.anzahl.toString();
  }

  void selectBrickToEdit(MouseEvent e) {
    print('penis');
    if (e.target is Element){
      HtmlElement element = e.target;
      String el = element.id.toString();
      List<String> s = el.split('_');
      int nummer = int.parse(s[1]);
      print(nummer);
      InputElement ind = querySelector('#elementnummertdr_$nummer');
      int elem = int.tryParse(ind.value);
      fillEditBrick(_model.getStone(elem));
      /*
      RegExp re = new RegExp("anzeigeButton_([0-9]+)");
      if (re.hasMatch(element.id)) {
        Match m = re.firstMatch(element.id);
        nummer = int.parse(m.group(1)) - 1;//int.parse(m.group(1)));
        print(nummer);
        InputElement ind = querySelector('#elementnummertdr_$nummer');
        int elem = int.tryParse(ind.value);
      } else {

      }*/
      gotoEditBrick();
    }
  }

  void editBrick() {
    InputElement ind = querySelector('#editBrickElementnummer');
    int elementnummer = int.tryParse(ind.value);

    ind = querySelector('#editBrickDesignnummer');
    int designnummer = int.tryParse(ind.value);

    ind = querySelector('#editBrickName');
    String name = ind.value;

    ind = querySelector('#editBrickMasse');
    String masse = ind.value;

    ind = querySelector('#editBrickLagerort');
    String lagerort = ind.value;

    ind = querySelector('#editBrickFarbe');
    String farbe = ind.value;

    String bild = "images/$elementnummer.png";

    ind = querySelector('#editBrickAnzahl');
    int anzahl = int.tryParse(ind.value);

    ind = querySelector('#editBrickNachbestellen');

    bool nachbestellen;
    if (ind.toString() == 'true')
      nachbestellen = true;
    else
      nachbestellen = false;
    /**TODO: stein edititeren*/
    Stein stone = new Stein(
        elementnummer,
        designnummer,
        name,
        masse,
        lagerort,
        farbe,
        bild,
        anzahl,
        nachbestellen);

//    _model.addNewBrickInFile(stone);

    _model.addStein(stone);
    //querySelector('#kopfzeile').text = stone.name;
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