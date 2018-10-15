part of legolager;

class Lagercontroller{

  Lagermodel _model = new Lagermodel();

  Lagerview _view = new Lagerview();

  Lagercontroller(){
    _view.generateHeader();
    _view.generateMainPage();
    _view.generateNewBrick();
    _view.generateAnzeige(3);
    //querySelector('#addNewBrickButtonMainpage').onClick.listen((MouseEvent e){gotoNewBrick();});
    querySelector('#addNewBrickButtonMainpage').onClick.listen((MouseEvent e){gotoAnzeige();});

  }
  
  void gotoNewBrick(){
    _view.showNewBrick();
  }

  void gotoAnzeige(){
    _view.showAnzeige();
  }
}