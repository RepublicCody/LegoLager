part of legolager;

class Lagercontroller{

  Lagermodel _model = new Lagermodel();

  Lagerview _view = new Lagerview();

  Lagercontroller(){
    _view.generateHeader();
    _view.generateMainPage();
    _view.generateNewBrick();
    querySelector('#addNewBrickButtonMainpage').onClick.listen((MouseEvent e){gotoNewBrick();});
  }
  
  void gotoNewBrick(){
    _view.showNewBrick();
  }
}