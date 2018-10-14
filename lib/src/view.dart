part of legolager;


class Lagerview{

  final mainpage = querySelector('#mainpage');

  final newBrick = querySelector('#newbrick');

  final head = querySelector('#header');

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
        '<div id="elementnummerdiv"><input id="elementnummer" value="test">Elementnummer</div>'
        '<div id="designnummerdiv"><input id="designnummer">Designnummer</div>'
        '<div id="namediv"><input id="name">Name</div>'
        '<div id="farbediv"><input id="farbe">Farbe</div>'
        '<div id="laengediv"><input id="laenge">Laenge</div>'
        '<div id="breitediv"><input id="breite">Breite</div>'
        '<div id="hoehediv"><input id="hoehe">Hoehe</div>'
        '<div id="anzahldiv"><input id="anzahl">Anzahl</div>'
        '<button id="speichernNewBrick">Speichern</button>'
        '</div>';

  newBrick.innerHtml = newBrickString;
  }

  void showNewBrick(){
    mainpage.style.display = "none";
    newBrick.style.display = "block";
  }
}