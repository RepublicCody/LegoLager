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
        '<div id="mainpageSuchkategorieElementnummer>">Elementnummer<input id="mainpageSuchfeldElementnummer"></div>'
        '<div id="mainpageSuchkategorieDesignnummer>">Designnummer<input id="mainpageSuchfeldDesignnummer"></div>'
        '<div id="mainpageSuchkategorieName>">Name<input id="mainpageSuchfeldName"></div>'
        '</div>'
        '<button id="mainpageSearchButton">Suche</button>'
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
            '<div id="newBrickNachbestellenDiv" class="newBrickDiv"><input id="newBrickNachbestellen" class="newBrickCheckbox" type="checkbox">Nachbestellen</div>'
          '</div>'
          '<button id="newBrickSpeichern">Speichern</button>'
        '</div>';

  newBrick.innerHtml = newBrickString;
  }

  void generateEditBrick(){
    String editBrickString = "";
    editBrickString = '<div id="formularEditBrick">'
        '<div id="formularEditBrickhead">Neuer Stein</div>'
        '<div id="formularEditBrickbody">'
        '<div id="elementnummerdivEditBrick" class="editBrickDiv"><input id="elementnummerEditBrick" class="editBrickInput">Elementnummer</div>'
        '<div id="elementnummerdivEditBrickOldLeft" class="editBrickDivOldLeft">Alte Elementnummer</div>'
        '<div id="elementnummerdivEditBrickOldRight" class="editBrickDivOldRight"></div>'

        '<div id="designnummerdivEditBrick" class="editBrickDiv"><input id="designnummerEditBrick" class="editBrickInput">Designnummer</div>'
        '<div id="designnummerdivEditBrickOldLeft" class="editBrickDivOldLeft">Alte Designnummer</div>'
        '<div id="designnummerdivEditBrickOldRight" class="editBrickDivOldRight"></div>'

        '<div id="namedivEditBrick" class="editBrickDiv"><input id="nameEditBrick" class="editBrickInput">Name</div>'
        '<div id="namedivEditBrickOldLeft" class="editBrickDivOldLeft">Alter Name</div>'
        '<div id="namedivEditBrickOldRight" class="editBrickDivOldRight"></div>'

        '<div id="farbedivEditBrick" class="editBrickDiv"><input id="farbeEditBrick" class="editBrickInput">Farbe</div>'
        '<div id="farbedivEditBrickOldLeft" class="editBrickDivOldLeftt">Alte Farbe</div>'
        '<div id="farbedivEditBrickOldRight" class="editBrickDivOldRight"></div>'

        '<div id="massedivEditBrick" class="editBrickDiv"><input id="masseEditBrick" class="editBrickInput">Masse</div>'
        '<div id="massedivEditBrickOldLeft" class="editBrickDivOldLeft">Alte Masse</div>'
        '<div id="massedivEditBrickOldRight" class="editBrickDivOldRight"></div>'

        '<div id="lagerortdivEditBrick" class="editBrickDiv"><input id="lagerortEditBrick" class="editBrickInput">Lagerort</div>'
        '<div id="lagerortdivEditBrickOldLeft" class="editBrickDivOldLeft">Alter Lagerort</div>'
        '<div id="lagerortdivEditBrickOldRight" class="editBrickDivOldRight"></div>'

        '<div id="anzahldivEditBrick" class="editBrickDiv"><input id="anzahlEditBrick" class="editBrickInput">Anzahl</div>'
        '<div id="anzahldivEditBrickOldLeft" class="editBrickDivOldLeft">Alte Anzahl</div>'
        '<div id="anzahldivEditBrickOldRight" class="editBrickDivOldRight"></div>'

        '<div id="nachbestellendivEditBrick" class="editBrickDiv"><input id="nachbestellenEditBrick" class="editBrickCheckbox" type="checkbox">Nachbestellen</div>'
        '<div id="nachbestellendivEditBrickOldLeft" class="editBrickDivOldLeft">Wurde Nachbestellt</div>'
        '<input id="nachbestellenEditBrickOldRight" class="editBrickCheckboxOldRight" type="checkbox" disabled>'

        '</div>'
        '<button id="speichernEditBrick">Speichern</button>'
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
          '<div id="bild_${x}" class="anzeigeBilder">'
          '<button id="anzeigeButton_${x}" class="anzeigeButtonBearbeiten">Bearbeiten</button>'
          '</div>'
            '<div id="beschreibung_${x}" class="anzeigeBeschreibungen">'
              '<table>'
                '<tr><td id="elementnummertdl_${x}">Elementnummer:</td><td class="anzeigeEl"><div id="elementnummertdr_${x}"></div></td></tr>'
                '<tr><td id="designnummertdl_${x}">Designnummer:</td><td class="anzeigeDe"><div id="designnummertdr_${x}"></div></td></tr>'
                '<tr><td id="nametdl_${x}">Name:</td><td class="anzeigeNa"><div id="nametdr_${x}"></div></td></tr>'
                '<tr><td id="farbetdl_${x}">Farbe:</td><td class="anzeigeFa"><div id="farbetdr_${x}"></div></td></tr>'
                '<tr><td id="massetdl_${x}">Masse:</td><td class="anzeigeMa"><div id="massetdr_${x}"></div></td></tr>'
                '<tr><td id="lagerorttdl_${x}">Lagerort:</td><td class="anzeigeLa"><div id="lagerorttdr_${x}"></div></td></tr>'
                '<tr><td id="anzahltdl_${x}">Anzahl:</td><td class="anzeigeAn"><div id="anzahltdr_${x}"></div></td></tr>'
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