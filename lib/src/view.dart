part of legolager;


class Lagerview{

  final mainpage = querySelector('#mainpage');

  final newBrick = querySelector('#newbrick');

  final head = querySelector('#header');

  final anzeige = querySelector('#anzeige');

  void generateHeader(){
    String headerString = "";
    headerString = '<div id="kopfzeile">Lego Lager</div>';
    head.innerHtml = headerString;
  }

  void generateMainPage(){
    String mainpageString ="";
    mainpageString = '<div id="suche"> '
        '<input id="suchfeld"> '
        '<div id="suchkategorie"></div>'
        '<button id="searchButtonMainpage">Suche</button>'
        '<button id="addNewBrickButtonMainpage">Neuer Stein</button>'
        '</div>';
  //querySelector('#kopfzeile').text = 'Lego Lager';

  mainpage.innerHtml = mainpageString;
  }

  void generateNewBrick(){
    String newBrickString = "";
    newBrickString = '<div id="formular">'
        '<div id="formularhead">Neuer Stein</div>'
        '<div id="elementnummerdiv" class="newBrickDiv"><input id="elementnummer" value="17" class="newBrickInput">Elementnummer</div>'
        '<div id="designnummerdiv" class="newBrickDiv"><input id="designnummer" class="newBrickInput">Designnummer</div>'
        '<div id="namediv" class="newBrickDiv"><input id="name" value="testing" class="newBrickInput">Name</div>'
        '<div id="farbediv" class="newBrickDiv"><input id="farbe" class="newBrickInput">Farbe</div>'
        '<div id="laengediv" class="newBrickDiv"><input id="laenge" class="newBrickInput">Laenge</div>'
        '<div id="breitediv" class="newBrickDiv"><input id="breite" class="newBrickInput">Breite</div>'
        '<div id="hoehediv" class="newBrickDiv"><input id="hoehe" class="newBrickInput">Hoehe</div>'
        '<div id="anzahldiv" class="newBrickDiv"><input id="anzahl" class="newBrickInput">Anzahl</div>'
        '<button id="speichernNewBrick">Speichern</button>'
        '</div>';

  newBrick.innerHtml = newBrickString;
  }

  void generateAnzeige(int i){
    String anzeigeString = '<div id="sucheAnzeige"> '
    '<input id="suchfeldAnzeige"> '
        '<div id="suchkategorieAnzeige"></div>'
        '<button id="searchButtonAnzeige">Suche</button>'
        '</div>';
    for(int x = 0; x < i; x++){
      anzeigeString += '<div id="bild_${x}"></div><div id="beschreibung_${x}">';
      anzeigeString += '<tbody>';
      anzeigeString += '<tr><td id="elementnummertdl_${x}">Elementnummer:</td><td id="elementnummertdr_${x}"></td></tr>'
          '<tr><td id="designnummertdl_${x}">Designnummer:</td><td id="designnummertdr_${x}"></td></tr>'
          '<tr><td id="nametdl_${x}">Name:</td><td id="nametdr_${x}"></td></tr>'
          '<tr><td id="farbetdl_${x}">Farbe:</td><td id="farbetdr_${x}"></td></tr>'
          '<tr><td id="laengetdl_${x}">Laenge:</td><td id="laengetdr_${x}"></td></tr>'
          '<tr><td id="breitetdl_${x}">Breite:</td><td id="breitetdr_${x}"></td></tr>'
          '<tr><td id="hoehetdl_${x}">Hoehe:</td><td id="hoehetdr_${x}"></td></tr>'
          '<tr><td id="anzahltdl_${x}">Anzahl:</td><td id="anzahltdr_${x}"></td></tr>';
      anzeigeString += '</tbody></div><br><button id="anzeigeButton">Bearbeiten</button><br>';
    }
    anzeige.innerHtml = anzeigeString;
  }

  void showMainpage(){
    mainpage.style.display = "block";
    newBrick.style.display = "none";
    anzeige.style.display = "none";
  }

  void showNewBrick(){
    mainpage.style.display = "none";
    newBrick.style.display = "block";
    anzeige.style.display = "none";
  }

  void showAnzeige(){
    mainpage.style.display = "none";
    newBrick.style.display = "none";
    anzeige.style.display = "block";
  }
}