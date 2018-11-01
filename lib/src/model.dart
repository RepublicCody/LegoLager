part of legolager;

class LagerListe{



}

class Lagermodel{

  List<Stein> liste = [];

  bool addStein(Stein stone){
    bool check = false;
    int elem = stone.elementnummer;
    int listelem;

    for(int i = 0; i < liste.length; i++){
      listelem = liste[i].elementnummer;
      if(listelem == elem)check = true;
    }
    if(check == false){
      liste.add(stone);
    }
    return check;
  }

  Stein getStone (int elem){
    int listelem;
    Stein reStone;
    for(int i = 0; i < liste.length; i++){
      listelem = liste[i].elementnummer;
      if(listelem == elem)reStone = liste[i];
    }
    return reStone;
    }

  /**
   * Hier soll der Inhalt des json Dokuments in die Liste List<Stein> liste gefüllt werden
   */
  void fillList(List<String> fileList){

    for(int x = 0; x < fileList.length; x ++){

    }

  }

  List<String> readFile(){
    List<String> result = [];
    return result;
  }

  void writeFile(List<Stein> l){

  }

  String steinToString (Stein stone) {
    String st = '{';
    st += 'elementnummer' + ':$stone.elementnummer,';
    st += 'designnummer' + ':$stone.designnummer,';
    st += 'name' + ':$stone.name,';
    st += 'laenge' + ':$stone.laenge,';
    st += 'breite' + ':$stone.breite,';
    st += 'hoehe' + ':$stone.hoehe,';
    st += 'anzahl' + ':$stone.anzahl,';
    st += '},';

    return st;
  }

}




class Stein {

  int elementnummer;
  int designnummer;
  String name;
  int laenge;
  int breite;
  int hoehe;
  String farbe;
  int anzahl;

  Stein(this.elementnummer, this.designnummer, this.name, this.laenge,
      this.breite, this.hoehe, this.farbe, this.anzahl);

  int getElemtnummer(){
    return this.elementnummer;
  }
  void setElemtnummer(int elementnummer){
    this.elementnummer = elementnummer;
  }

  int getDesignnummer(){
    return this.designnummer;
  }
  void setDesignnummer(int designnummer){
    this.designnummer = designnummer;
  }

  String getName(){
    return this.name;
  }
  void setName(String name){
    this.name = name;
  }

  int getlaenge(){
    return this.laenge;
  }
  void setLaenge(int laenge){
    this.laenge = laenge;
  }

  int getBreite(){
    return this.breite;
  }
  void setbreite(int breite){
    this.breite = breite;
  }

  int getHoehe(){
    return this.hoehe;
  }
  void setHoehe(int hoehe){
    this.hoehe = hoehe;
  }

  String getFarbe(){
    return this.farbe;
  }
  void setFarbe(String farbe){
    this.farbe = farbe;
  }

  int getAnzahl(){
    return this.anzahl;
  }
  void setAnzahl(int anzahl){
    this.anzahl = anzahl;
  }

  String getMasse(){
    return this.laenge.toString() + "x" + this.breite.toString() + "x" + this.hoehe.toString();
  }

  void addAnzahl (int added){
    this.anzahl += added;
  }

  void subtractAnzahl(int subtract){
    this.anzahl -= subtract;
  }

  void deleteAnzahl (){
    this.anzahl = 0;
  }
}