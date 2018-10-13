part of legolager;

class Lagermodel{

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