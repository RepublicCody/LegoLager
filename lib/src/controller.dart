part of legolager;

class Lagercontroller{

  Lagermodel _model = new Lagermodel();

  Lagerview _view = new Lagerview();

  Lagercontroller(){
    _view.generateMainPage();
  }
}