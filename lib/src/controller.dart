part of legolager;

class Lagercontroller{

  Lagermodel _model = new Lagermodel();

  Lagerview _view = new Lagerview();

  List<String> newBrickElements = [];

  Lagercontroller(){
    _view.generateHeader();
    _view.generateMainPage();
    _view.generateNewBrick();
    _view.generateAnzeige(3);
    querySelector('#addNewBrickButtonMainpage').onClick.listen((MouseEvent e){gotoNewBrick();});
    //querySelector('#addNewBrickButtonMainpage').onClick.listen((MouseEvent e){gotoAnzeige();});

  }
  @Component(
    selector: 'little-tour',
    template: '''
    <input #newHero
      (keyup.enter)="addHero(newHero.value)"
      (blur)="addHero(newHero.value); newHero.value='' ">

    <button (click)="addHero(newHero.value)">Add</button>

    <ul><li *ngFor="let hero of heroes">{{hero}}</li></ul>
  ''',
    directives: [coreDirectives],
  )
  class LittleTourComponent {
  List<String> heroes = ['Windstorm', 'Bombasto', 'Magneta', 'Tornado'];

  void addHero(String newHero) {
  if (newHero == null || newHero.isEmpty) return;
  heroes.add(newHero);
  }
  }

  void addnewBrickElements(String newHero) {
  if (newHero == null || newHero.isEmpty) return;
  newBrickElements.add(newHero);
  }

  void createNewBrick(){
    int elementnummer = int.tryParse(newBrickElements[0]);
    int designnummer = int.tryParse(newBrickElements[1]);
    String name = newBrickElements[2];
    int laenge = int.tryParse(newBrickElements[3]);
    int breite = int.tryParse(newBrickElements[4]);
    int hoehe = int.tryParse(newBrickElements[5]);
    String farbe = newBrickElements[6];
    int anzahl = int.tryParse(newBrickElements[7]);

    Stein stone = new Stein(elementnummer, designnummer, name, laenge, breite, hoehe, farbe, anzahl);
  }

  void gotoNewBrick(){
    _view.showNewBrick();
  }

  void gotoAnzeige(){
    _view.showAnzeige();
  }
}