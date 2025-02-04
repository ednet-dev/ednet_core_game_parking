part of game_parking; 
 
// lib/gen/game/parking/cars.dart 
 
abstract class CarGen extends Entity<Car> { 
 
  CarGen(Concept concept) {
    this.concept = concept;
  }
 
  CarGen.withId(Concept concept, Brand brand, Parking parking) {
    this.concept = concept;
    setParent("brand", brand); 
    setParent("parking", parking); 
  } 
 
  Brand get brand => getParent("brand") as Brand;
  void set brand(Brand p) { setParent("brand", p); }
  
  Parking get parking => getParent("parking") as Parking;
  void set parking(Parking p) { setParent("parking", p); }
  
  String get orientation => getAttribute("orientation"); 
  void set orientation(String a) { setAttribute("orientation", a); }
  
  int get startRow => getAttribute("startRow"); 
  void set startRow(int a) { setAttribute("startRow", a); }
  
  int get startColumn => getAttribute("startColumn"); 
  void set startColumn(int a) { setAttribute("startColumn", a); }
  
  int get currentRow => getAttribute("currentRow"); 
  set currentRow(int a) { setAttribute("currentRow", a); }
  
  int get currentColumn => getAttribute("currentColumn"); 
  void set currentColumn(int a) { setAttribute("currentColumn", a); }
  
  bool get selected => getAttribute("selected"); 
  void set selected(bool a) { setAttribute("selected", a); }
  
  Car newEntity() => new Car(concept!);
  Cars newEntities() => new Cars(concept!);
  
} 
 
abstract class CarsGen extends Entities<Car> { 
 
  CarsGen(Concept concept) {
    this.concept = concept;
  }
 
  Cars newEntities() => new Cars(concept!);
  Car newEntity() => new Car(concept!);
  
}

