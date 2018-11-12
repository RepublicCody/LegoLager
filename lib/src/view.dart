part of legolager;


class Lagerview{

  final mainpage = querySelector('#mainpage');

  final newBrick = querySelector('#newbrick');

  final editBrick = querySelector('#editbrick');

  final head = querySelector('#header');

  final anzeige = querySelector('#anzeige');

  void generateHeader(){
    String headerString = "";
    headerString = '<div id="kopfzeile">Lego Lager</div>';
    head.innerHtml = headerString;
  }

  void generateMainPage(){
    String mainpageString ="";
    mainpageString = '<div id="mainpageSuche">'
        '<div id="mainpageSuchkategorie">'
        '<div id="mainpageSuchkategorieElementnummer>"><input id="mainpageSuchfeldElementnummer"></div>'
        '<div id="mainpageSuchkategorieDesignnummer>"><input id="mainpageSuchfeldDesignnummer"></div>'
        '<div id="mainpageSuchkategorieName>"><input id="mainpageSuchfeldName"></div>'
        '</div>'
        '<button id="mainpageSearchButton">Suche</button>'
        '<button id="mainpageAddNewBrickButton">Neuer Stein</button>'
        '<button id="mainpageSearchAllBricks">Alle Steine</button>'
        '</div>';
  //querySelector('#kopfzeile').text = 'Lego Lager';

  mainpage.innerHtml = mainpageString;
  }

  void generateNewBrick(){
    String newBrickString = "";
    newBrickString = '<div id="formularNewBrick">'
        '<div id="formularNewBrickhead">Neuer Stein</div>'
        '<div id="formularNewBrickbody">'
        '<div id="elementnummerdivNewBrick" class="newBrickDiv"><input id="elementnummerNewBrick" value="17" class="newBrickInput">Elementnummer</div>'
        '<div id="designnummerdivNewBrick" class="newBrickDiv"><input id="designnummerNewBrick" class="newBrickInput">Designnummer</div>'
        '<div id="namedivNewBrick" class="newBrickDiv"><input id="nameNewBrick" value="testing" class="newBrickInput">Name</div>'
        '<div id="farbedivNewBrick" class="newBrickDiv"><input id="farbeNewBrick" class="newBrickInput">Farbe</div>'
        '<div id="laengedivNewBrick" class="newBrickDiv"><input id="laengeNewBrick" class="newBrickInput">Laenge</div>'
        '<div id="breitedivNewBrick" class="newBrickDiv"><input id="breiteNewBrick" class="newBrickInput">Breite</div>'
        '<div id="hoehedivNewBrick" class="newBrickDiv"><input id="hoeheNewBrick" class="newBrickInput">Hoehe</div>'
        '<div id="anzahldivNewBrick" class="newBrickDiv"><input id="anzahlNewBrick" class="newBrickInput">Anzahl</div>'
        '</div>'
        '<button id="speichernNewBrick">Speichern</button>'
        '<button id="newBrickButtonMainpage">Startseite</button>'
        '</div>';

  newBrick.innerHtml = newBrickString;
  }

  void generateEditBrick(Stein stone){
    String editBrickString = "";
    editBrickString = '<div id="formularEditBrick">'
        '<div id="formularEditBrickhead">Neuer Stein</div>'
        '<div id="formularEditBrickbody">'
        '<div id="elementnummerdivEditBrick" class="editBrickDiv"><input id="elementnummerEditBrick" value="${stone.elementnummer}" class="editBrickInput">Elementnummer</div>'
        '<div id="elementnummerdivEditBrickOld" class="editBrickDivOld" value="${stone.elementnummer}>"Alte Elementnummer</div>'

        '<div id="designnummerdivEditBrick" class="editBrickDiv"><input id="designnummerEditBrick" value="${stone.designnummer}" class="editBrickInput">Designnummer</div>'
        '<div id="designnummerdivEditBrickOld" class="editBrickDivOld" value="${stone.designnummer}">Alte Designnummer</div>'

        '<div id="namedivEditBrick" class="editBrickDiv"><input id="nameEditBrick" value="${stone.name}" class="editBrickInput">Name</div>'
        '<div id="namedivEditBrickOld" class="editBrickDivOld" value="${stone.name}">Alter Name</div>'

        '<div id="farbedivEditBrick" class="editBrickDiv"><input id="farbeEditBrick" value="${stone.farbe}" class="editBrickInput">Farbe</div>'
        '<div id="farbedivEditBrickOld" class="editBrickDivOld" value="${stone.farbe}">Alte Farbe</div>'

        '<div id="massedivEditBrick" class="editBrickDiv"><input id="masseEditBrick" value="${stone.masse}" class="editBrickInput">Masse</div>'
        '<div id="massedivEditBrickOld" class="editBrickDivOld" value="${stone.masse}">Alte Masse</div>'

        '<div id="lagerortdivEditBrick" class="editBrickDiv"><input id="lagerortEditBrick" value="${stone.lagerort}" class="editBrickInput">Lagerort</div>'
        '<div id="lagerortdivEditBrickOld" class="editBrickDivOld" value="${stone.lagerort}">Alter Lagerort</div>'

        '<div id="anzahldivEditBrick" class="editBrickDiv"><input id="anzahlEditBrick" value="${stone.anzahl}" class="editBrickInput">Anzahl</div>'
        '<div id="anzahldivEditBrickOld" class="editBrickDivOld" value="${stone.anzahl}">Alte Anzahl</div>'

        '</div>'
        '<button id="speichernEditBrick">Speichern</button>'
        '<button id="editBrickButtonMainpage">Startseite</button>'
        '</div>';

    editBrick.innerHtml = editBrickString;
  }

  void generateAnzeige(int i){
    String anzeigeString = '<div id="anzeigeSuche"> '
        '<div id="anzeigeSuchkategorie">'
        '<div id="anzeigeSuchkategorieElementnummer>"><input id="anzeigeSuchfeldElementnummer"></div>'
        '<div id="anzeigeSuchkategorieDesignnummer>"><input id="anzeigeSuchfeldDesignnummer"></div>'
        '<div id="anzeigeSuchkategorieName>"><input id="anzeigeSuchfeldName"></div>'
        '</div>'
        '<button id="anzeigeSearchButton">Erneut suchen</button>'
        '<button id="anzeigeAddNewBrickButton">Neuer Stein</button>'
        '<button id="anzeigeSearchAllBricks">Alle Steine</button>'
        '<div id="anzeigeErgebnis"></div>'
        '</div>';

    for(int x = 0; x < i; x++){
      anzeigeString += '<div id="ergebnis_${x}" class="anzeigeTabelle">'
          '<div id="bild_${x}" class="anzeigeBilder"></div>'
          '<div id="beschreibung_${x}" class="anzeigeBeschreibungen">'
            '<table>'
              '<tr><td id="elementnummertdl_${x}">Elementnummer:</td><td><div id="elementnummertdr_${x}" class="anzeigeEl"></div></td></tr>'
              '<tr><td id="designnummertdl_${x}">Designnummer:</td><td><div id="designnummertdr_${x}"class="anzeigeDe"></div></td></tr>'
              '<tr><td id="nametdl_${x}">Name:</td><td><div id="nametdr_${x}"class="anzeigeNa"></div></td></tr>'
              '<tr><td id="farbetdl_${x}">Farbe:</td><td><div id="farbetdr_${x}"class="anzeigeFa"></div></td></tr>'
              '<tr><td id="massetdl_${x}">Masse:</td><td><div id="massetdr_${x}"class="anzeigeMa"></div></td></tr>'
              '<tr><td id="lagerorttdl_${x}">Lagerort:</td><td><div id="lagerorttdr_${x}"class="anzeigeLa"></div></td></tr>'
              '<tr><td id="anzahltdl_${x}">Anzahl:</td><td><div id="anzahltdr_${x}"class="anzeigeAn"></div></td></tr>'
            '</table>'
          '</tbody></div>'
          '<button id="anzeigeButton_${x}" class="anzeigeButtonBearbeiten">Bearbeiten</button><br></div>';
    }
    anzeigeString += '<button id="anzeigeButtonMainpage">Startseite</button></div>';
    anzeige.innerHtml = anzeigeString;
  }

  void showMainpage(){
    mainpage.style.display = "block";
    newBrick.style.display = "none";
    anzeige.style.display = "none";
    editBrick.style.display = "none";
  }

  void showNewBrick(){
    mainpage.style.display = "none";
    newBrick.style.display = "block";
    anzeige.style.display = "none";
    editBrick.style.display = "none";
  }

  void showAnzeige(){
    mainpage.style.display = "none";
    newBrick.style.display = "none";
    anzeige.style.display = "block";
    editBrick.style.display = "none";
  }

  void showEditBrick(){
    mainpage.style.display = "none";
    newBrick.style.display = "none";
    anzeige.style.display = "none";
    editBrick.style.display = "block";
  }
}