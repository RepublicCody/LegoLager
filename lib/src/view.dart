part of legolager;


class Lagerview{

  final mainpage = querySelector('#mainpage');

  final newBrick = querySelector('#newbrick');

  void generateMainPage(){

    String mainpageString ="";
    mainpageString = '<div id="kopfzeile">Lego Lager</div><br> '
        '<div id="suche"> '
          '<input id="suchfeld"> '
          '<div id="suchkategorie"></div>'
          '<button di="searchButtonMainpage">Suche</button>'
        '</div>';
  //querySelector('#kopfzeile').text = 'Lego Lager';

  mainpage.innerHtml = mainpageString;
  }

  void generateNewBrick(){
    String newBrickString = "";
    newBrickString = '<input id="elementnummer" value="test">'
        '<input id="designnummer">'
        '<input id="name">'
        '<input id="farbe">'
        '<input id="laenge">'
        '<input id="breite">'
        '<input id="hoehe">'
        '<input id="anzahl">';

  newBrick.innerHtml = newBrickString;
  }

}