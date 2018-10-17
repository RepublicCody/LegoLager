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
        '<div id="elementnummerdiv"><input id="elementnummer" value="17">Elementnummer</div>'
        '<div id="designnummerdiv"><input id="designnummer">Designnummer</div>'
        '<div id="namediv"><input id="name" value="testing">Name</div>'
        '<div id="farbediv"><input id="farbe">Farbe</div>'
        '<div id="laengediv"><input id="laenge">Laenge</div>'
        '<div id="breitediv"><input id="breite">Breite</div>'
        '<div id="hoehediv"><input id="hoehe">Hoehe</div>'
        '<div id="anzahldiv"><input id="anzahl">Anzahl</div>'
        '<button id="speichernNewBrick">Speichern</button>'
        '</div>';

  newBrick.innerHtml = newBrickString;
  }

  void generateAnzeige(int i){
    String anzeigeString = "";
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