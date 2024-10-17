
class Colors{
  String color;
  Colors(this.color);

  String toString(){
    return ("$color");
  }
}
class Posistion{
  String position;
  Posistion(this.position);
  String toString(){
    return ("$position");
  }
}
class Shape{
  String shape;
  Shape(this.shape);
  String toString(){
    return ("$shape");
  }
}
class Window{
  Shape shape;
  Colors colors;
  Posistion posistion;  
  
  Window({required this.shape,required this.colors,required this.posistion});

  @override
  String toString(){
    return ("$shape - $colors - $posistion");
  }
}
class Door{
  Shape shape;
  Colors colors;
  Posistion posistion;

  Door({required this.shape,required this.colors,required this.posistion});

  String toString(){
    return ("$shape - $colors - $posistion");
  }
}
class Roof{
  Shape shape;
  Colors colors;
  Roof({required this.shape,required this.colors});

  String toString(){
    return ("$shape - $colors");
  }
}
class House{
  Colors colors;
  List<Window> windows;
  List<Door> doors;
  Roof roofs;

  House({required this.colors,required this.windows,required this.doors,required this.roofs});

  @override
  String toString(){
    String allWindows = windows.map((w) => "${w.shape} - ${w.colors} - ${w.posistion}").join("\nWindow:");
    String allDoors = doors.map((d) => "${d.shape} - ${d.colors} - ${d.posistion}").join("\nDoor:");
    return ("House:\nWindow:$allWindows\nDoor:$allDoors\nRoof:$roofs");
  }

}
void main(List<String> args) {
  
  House house_1 = House(
    colors: Colors("White"), 
    windows: [
      Window(shape: Shape("Square"), colors: Colors("Red"), posistion: Posistion("1st floor on the Right side")),
      Window(shape: Shape("Square"), colors: Colors("Blue"), posistion: Posistion("Ground floor on the Left side")),
    ], 
    doors: [
      Door(shape: Shape("Reactangle"), colors: Colors("Black"), posistion: Posistion("Ground floor on center"))
    ], 
    roofs: Roof(colors: Colors("Red"),shape: Shape("Shape M"))
    );

  print(house_1);
}