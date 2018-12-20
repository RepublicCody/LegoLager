part of legolager;


class Lagerview{

  final mainpage = querySelector('#mainpage');

  final newBrick = querySelector('#newbrick');

  final editBrick = querySelector('#editbrick');

  final head = querySelector('#header');

  final anzeige = querySelector('#anzeige');

  void generateHeader(){
    String headerString = "";
    headerString = '<div id="kopfzeile">Lego Lager<button id="headerButtonMainpage">Startseite</button></div>';
    head.innerHtml = headerString;
  }

  void generateMainPage(){
    String mainpageString ="";
    mainpageString = '<div id="mainpageSuche">'
        '<div id="mainpageDaten">'
          '<div id="mainpageAnzahlAlleSteine">'
            '<div id="mainpageAnzahlAlleSteineText">Alle Steine</div>'
            '<div id="mainpageAnzahlAlleSteineAusgabe"></div>'
          '</div>'
          '<div id="mainpageAnzahlVerschiedeneSteine">'
            '<div id="mainpageAnzahlVerschiedeneSteineText">Verschiedene Steine</div>'
            '<div id="mainpageAnzahlVerschiedeneSteineAusgabe"></div>'
          '</div>'
        '</div>'

        '<div id="mainpageSuchkategorie">'
        '<div id="mainpageSuchkategorieElementnummer>">Elementnummer<input id="mainpageSuchfeldElementnummer" value="kaese"></div>'
        '<div id="mainpageSuchkategorieDesignnummer>">Designnummer<input id="mainpageSuchfeldDesignnummer"></div>'
        '<div id="mainpageSuchkategorieName>">Name<input id="mainpageSuchfeldName"></div>'
        '</div>'
        '<button id="mainpageSearchButton">Suche</button>'
        '<button id="mainpageNachbestellungButton">Nachbestellung</button>'
        '<button id="mainpageAddNewBrickButton">Neuer Stein</button>'
        '<button id="mainpageSearchAllBricksButton">Alle Steine</button>'
        '</div>';
  //querySelector('#kopfzeile').text = 'Lego Lager';

  mainpage.innerHtml = mainpageString;
  }

  void generateNewBrick(){
    String newBrickString = "";
    newBrickString =''
        '<div id="newBrickFormular">'
          '<div id="newBrickFormularHead">Neuer Stein</div>'
          '<div id="newBrickFormularBody">'
            '<div id="newBrickElementnummerDiv" class="newBrickDiv"><input id="newBrickElementnummer" value="17" class="newBrickInput">Elementnummer</div>'
            '<div id="newBrickDesignnummerDiv" class="newBrickDiv"><input id="newBrickDesignnummer" class="newBrickInput">Designnummer</div>'
            '<div id="newBrickNameDiv" class="newBrickDiv"><input id="newBrickName" value="testing" class="newBrickInput">Name</div>'
            '<div id="newBrickFarbeDiv" class="newBrickDiv"><input id="newBrickFarbe" class="newBrickInput">Farbe</div>'
            '<div id="newBrickMasseDiv" class="newBrickDiv"><input id="newBrickMasse" class="newBrickInput">Masse</div>'
            '<div id="newBrickLagerortDiv" class="newBrickDiv"><input id="newBrickLagerort" class="newBrickInput">Lagerort</div>'
            '<div id="newBrickAnzahlDiv" class="newBrickDiv"><input id="newBrickAnzahl" class="newBrickInput">Anzahl</div>'
            '<div id="newBrickNachbestellenDiv" class="newBrickDiv">Nachbestellen<input id="newBrickNachbestellen" class="newBrickCheckbox" type="checkbox"></div>'
          '</div>'
          '<button id="newBrickSpeichern">Speichern</button>'
        '</div>';

  newBrick.innerHtml = newBrickString;
  }

  void generateEditBrick(){
    String editBrickString = "";
    editBrickString += '<div id="editBrickFormular">'
        '<div id="editBrickFormularHead">Neuer Stein</div>'
        '<div id="editBrickFormularBody">'

        '<div id="editBrickElementnummerDiv"><input id="editBrickElementnummer">Elementnummer</div>'
        '<div id="editBrickElementnummerDivOldLeft">Alte Elementnummer</div>'
        '<div id="editBrickElementnummerDivOldRight"></div>'

        '<div id="editBrickDesignnummerDiv"><input id="editBrickDesignnummer">Designnummer</div>'
        '<div id="editBrickDesignnummerDivOldLeft">Alte Designnummer</div>'
        '<div id="editBrickDesignnummerDivOldRight"></div>'

        '<div id="editBrickNameDiv"><input id="editBrickName">Name</div>'
        '<div id="editBrickNameDivOldLeft">Alter Name</div>'
        '<div id="editBrickNameDivOldRight"></div>'

        '<div id="editBrickFarbeDiv"><input id="editBrickFarbe">Farbe</div>'
        '<div id="editBrickFarbeDivOldLeft">Alte Farbe</div>'
        '<div id="editBrickFarbeDivOldRight"></div>'

        '<div id="editBrickMasseDiv"><input id="editBrickMasse">Masse</div>'
        '<div id="editBrickMasseDivOldLeft">Alte Masse</div>'
        '<div id="editBrickMasseDivOldRight"></div>'

        '<div id="editBrickLagerortDiv"><input id="editBrickLagerort">Lagerort</div>'
        '<div id="editBrickLagerortDivOldLeft">Alter Lagerort</div>'
        '<div id="editBrickLagerortDivOldRight"></div>'

        '<div id="editBrickAnzahlDiv"><input id="editBrickAnzahl">Anzahl</div>'
        '<div id="editBrickAnzahlDivOldLeft">Alte Anzahl</div>'
        '<div id="editBrickAnzahlDivOldRight"></div>'
        '<button id="editBrickPlusOneButton">+</button>'
        '<button id="editBrickMinusOneButton">-</button>'
        '<button id="editBrickZeroButton">0</button>'
        '<input id="editBrickAdd">'
        '<button id="editBrickAddButton">Addieren</button>'

        '<div id="editBrickNachbestellenDiv"><input id="editBrickNachbestellen" type="checkbox">Nachbestellen</div>'
        '<div id="editBrickNachbestellenDivOldLeft">Wurde Nachbestellt</div>'
        '<input id="editBrickNachbestellenOldRight" type="checkbox">'

        '</div>'
        '<button id="editBrickSpeichern">Speichern</button>'
        '</div>';

    editBrick.innerHtml = editBrickString;
  }

  void generateAnzeige(int i){
    String anzeigeString = '<div id="anzeigeSuche"> '
        '<div id="anzeigeSuchkategorie">'
          '<div id="anzeigeSuchkategorieElementnummer"><input id="anzeigeSuchfeldElementnummer"></div>'
          '<div id="anzeigeSuchkategorieDesignnummer"><input id="anzeigeSuchfeldDesignnummer"></div>'
          '<div id="anzeigeSuchkategorieName"><input id="anzeigeSuchfeldName"></div>'
        '</div>'
        '<button id="anzeigeSearchButton">Erneut suchen</button>'
        '<button id="anzeigeAddNewBrickButton">Neuer Stein</button>'
        '<button id="anzeigeSearchAllBricks">Alle Steine</button>'
        '<div id="anzeigeErgebnis"></div>'
        '</div>';

    for(int x = 0; x < i; x++){
      anzeigeString += '<div id="ergebnis_${x}" class="anzeigeTabelle">'
          '<div class=keks>'
          '<div id="bild_${x}" class="anzeigeBilder">''</div>'
          '<button id="anzeigeButtonBearbeiten_${x}" class="anzeigeBearbeitenButton">Bearbeiten</button>'
          '</div>'
            '<div id="beschreibung_${x}" class="anzeigeBeschreibungen">'
              '<table>'
                '<tr><td id="elementnummertdl_${x}">Elementnummer:</td><td class="anzeigeEl"><div id="elementnummertdr_${x}"></div></td></tr>'
                '<tr><td id="designnummertdl_${x}">Designnummer:</td><td class="anzeigeDe"><div id="designnummertdr_${x}"></div></td></tr>'
                '<tr><td id="nametdl_${x}">Name:</td><td class="anzeigeNa"><div id="nametdr_${x}"></div></td></tr>'
                '<tr><td id="farbetdl_${x}">Farbe:</td><td class="anzeigeFa"><div id="farbetdr_${x}"></div></td></tr>'
                '<tr><td id="massetdl_${x}">Masse:</td><td class="anzeigeMa"><div id="massetdr_${x}"></div></td></tr>'
                '<tr><td id="lagerorttdl_${x}">Lagerort:</td><td class="anzeigeLa"><div id="lagerorttdr_${x}"></div></td></tr>'
                '<tr><td id="anzahltdl_${x}">Anzahl:</td><td class="anzeigeAn"><div id="anzahltdr_${x}" class="anzeigeAnzahlZahl"></div></td></tr>'
                '<tr><td id="nachbestellentdl_${x}">Nachbestellung:</td><td class="anzeigeNac"><input id="nachbestellentdr_${x}" type="checkbox"></td></tr>'
              '</table>'
            '</div></div>';
    }
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