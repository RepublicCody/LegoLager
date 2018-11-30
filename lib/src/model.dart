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
    st += 'elementnummer' + ':${stone.elementnummer},';
    st += 'designnummer' + ':${stone.designnummer},';
    st += 'name' + ':${stone.name},';
    st += 'masse' + ':${stone.masse},';
    st += 'lagerort' + ':${stone.lagerort},';
    st += 'farbe' + ':${stone.farbe},';
    st += 'bild' + ':${stone.bild},';
    st += 'anzahl' + ':${stone.anzahl},';
    st += 'nachbestellen' + ':${stone.nachbestellen},';
    st += '},';

    return st;
  }

}




class Stein {

  int elementnummer;
  int designnummer;
  String name;
  String masse;
  String lagerort;
  String farbe;
  String bild;
  int anzahl;
  bool nachbestellen;

  Stein(this.elementnummer, this.designnummer, this.name, this.masse, this.lagerort, this.farbe, this.bild, this.anzahl, this.nachbestellen);

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

  String getMasse(){
    return this.masse;
  }

  void setMasse(String masse){
    this.masse = masse;
  }

  String getLagerort(){
    return this.lagerort;
  }

  void setLagerort(String lagerort){
    this.lagerort = lagerort;
  }

  String getFarbe(){
    return this.farbe;
  }
  void setFarbe(String farbe){
    this.farbe = farbe;
  }

  String getBild(){
    return this.bild;
  }
  void setBild(String bild){
    this.bild = bild;
  }

  int getAnzahl(){
    return this.anzahl;
  }
  void setAnzahl(int anzahl){
    this.anzahl = anzahl;
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

  bool getNachbestellen(){
    return this.nachbestellen;
  }
  void setNachbestellenTrue(){
    this.nachbestellen = true;
  }

  void setNachbestellenFalse(){
    this.nachbestellen = false;
  }
}