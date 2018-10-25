part of legolager;

class Lagermodel{

  bool checkForSimelarBricks(Stein stone){
    bool check = false;
    String elem = stone.elementnummer.toString();

    File file = new File('stones.txt');
    Stream<List<int>> inputStream = file.openRead();

    inputStream
        .transform(utf8.decoder)       // Decode bytes to UTF-8.
        .transform(new LineSplitter()) // Convert stream to individual lines.
        .listen((String line) {        // Process results.
      print('$line: ${line.length} bytes');
    },
        onDone: () {querySelector('#kopfzeile').text = 'test';},
        onError: (e) {querySelector('#kopfzeile').text = e; });

    return check;
  }


  void addNewBrickInFile(Stein stone) {
    String newBrickString = '[';
    newBrickString += 'elementnummer' + ':$stone.elementnummer\n';
    newBrickString += 'designnummer' + ':$stone.designnummer\n';
    newBrickString += 'name' + ':$stone.name\n';
    newBrickString += 'laenge' + ':$stone.laenge\n';
    newBrickString += 'breite' + ':$stone.breite\n';
    newBrickString += 'hoehe' + ':$stone.hoehe\n';
    newBrickString += 'anzahl' + ':$stone.anzahl\n';
    newBrickString += ']\n';

    final file = File('web/stones.txt.txt');
    file.writeAsString(newBrickString);
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