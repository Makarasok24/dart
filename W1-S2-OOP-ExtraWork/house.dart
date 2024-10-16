
void main(List<String> args) {
  
  House house_1 = House(
    "Toul Kork", 
    true,
    [
      Window("Red","on left side, stair 1"),
      Window("Green", "on right side, stair 1"),
      Window("Red","on left side, Ground Floor"),
      Window("Red","on right side, Ground Floor")
    ], 
    Door("Center"), 
    Roof("Gabled"));

  House house_2 = House(
    "Toul Kork", 
    true,
    [
      Window("Green","on left side, stair 1")
    ], 
    Door(""), 
    Roof("M Shape"));
  
  House house_3 = House(
    "Preak Leap", 
    true,
    [
      Window("Sky","on left side, Ground floor")
    ], 
    Door("Right"), 
    Roof("Barrel"));

  House house_4 = House(
    "Takeo", 
    false,
    [
      Window("Sky","on left side, stair 1"),
      Window("Sky","on left side, Ground Floor"),
      Window("Sky","on right side, Ground Floor"),
    ], 
    Door("Center"), 
    Roof("Flat"));

  void line(){
    print("\n======================================\n");
  }

  print(house_1.toString());
  line();
  print(house_2.toString());
  line();
  print(house_3.toString());
  line();
  print(house_4.toString());

}
class Window{
  String colors;
  String position;
  Window (this.colors,this.position);
}

class Door{
  String position;
  Door(this.position);
}

class Roof{
  String shape;
  Roof(this.shape);
}

class House{
  String address;
  bool isChimney;
  List<Window> windows;
  Door doors;
  Roof roofs;

  House(this.address,this.isChimney,this.windows,this.doors,this.roofs);

  @override
  String toString(){
    String allWindows = windows.map((w) => "${w.colors},${w.position}").join("\nWindow:");
    String chimney = isChimney? "Have" : "Doesn't have";
    return "Address: $address\nWindow: $allWindows\nDoor: ${doors.position}\nRoof: ${roofs.shape}\nChimney:$chimney";
  }
}