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

        '<div id="laengedivEditBrick" class="editBrickDiv"><input id="laengeEditBrick" value="${stone.laenge}" class="editBrickInput">Laenge</div>'
        '<div id="laengedivEditBrickOld" class="editBrickDivOld" value="${stone.laenge}">Alte Laenge</div>'

        '<div id="breitedivEditBrick" class="editBrickDiv"><input id="breiteEditBrick" value="${stone.breite}" class="editBrickInput">Breite</div>'
        '<div id="breitedivEditBrickOld" class="editBrickDivOld" value="${stone.breite}">Alte Breite</div>'

        '<div id="hoehedivEditBrick" class="editBrickDiv"><input id="hoeheEditBrick" value="${stone.hoehe}" class="editBrickInput">Hoehe</div>'
        '<div id="hoehedivEditBrickOld" class="editBrickDivOld" value="${stone.hoehe}">Alte Hoehe</div>'

        '<div id="anzahldivEditBrick" class="editBrickDiv"><input id="anzahlEditBrick" value="${stone.anzahl}" class="editBrickInput">Anzahl</div>'
        '<div id="anzahldivEditBrickOld" class="editBrickDivOld" value="${stone.anzahl}">Alte Anzahl</div>'

        '</div>'
        '<button id="speichernEditBrick">Speichern</button>'
        '<button id="editBrickButtonMainpage">Startseite</button>'
        '</div>';

    editBrick.innerHtml = editBrickString;
  }

  void generateAnzeige(int i){
    String anzeigeString = '<div id="sucheAnzeige"> '
    '<input id="suchfeldAnzeige"> '
        '<div id="suchkategorieAnzeige"></div>'
        '<button id="searchButtonAnzeige">Suche</button>';
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
      anzeigeString += '</tbody></div><br><button id="anzeigeButton_${x}">Bearbeiten</button><br>';
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