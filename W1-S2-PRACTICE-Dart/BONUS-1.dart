enum Direction { north, east, south, west }
 
void main() {
  // Initial position {7, 3} and facing north
  int x = 7;
  int y = 3;
  Direction direction = Direction.north;

  // Example instruction sequence
   const instructions = "RAALAL";
  // const instructions = "L";
  // Process the instructions and get the final position and direction
  for (var instruction in instructions.split("")){
    // use spilt function to get the step each letter in instructions string
    switch(instruction){
      //turn right
      case 'R':{
        direction = turnRight(direction);
        break;
      }
      //turn left
      case 'L':{
        direction = turnLeft(direction);
      }
      // go forward
      case 'A':{
        switch(direction){
          case Direction.north:{
            y+=1;
            break;
          }
          case Direction.east:{
            x+=1;
            break;
          }
          case Direction.south:{
            y-=1;
            break;
          }
          case Direction.west:{
            x-=1;
            break;
          }
        }
      }
    }

    print('$instruction : positioin = {$x,$y , direction: \"${stringDirection(direction).toUpperCase()}\"}');
  }

  // Print the final position and direction

  // final position (9,4) -> west
  print("Final position: x = $x, y = $y ");
  print("Facing: ${stringDirection(direction)}");
}

// Declare a function of turnRight to know direction when it turn right
Direction turnRight(Direction currentDirection){
  // paramenter currentDirection fect the current direction of robot
  // and now current direction if North
  switch(currentDirection){
    //if currntion direction is nort when turn right, it will move direction to east
    case Direction.north: return Direction.east;
    //if currntion direction is east when turn right, it will move direction to south
    case Direction.east:  return Direction.south;
    //if currntion direction is south when turn right, it will move direction to west
    case Direction.south: return Direction.west;
    //if currntion direction is west when turn right, it will move direction to north
    case Direction.west:  return Direction.north;
  }
}


// Declare a function of turnRight to know direction when it turn left
Direction turnLeft(Direction currentDirection){
  // paramenter currentDirection fect the current direction of robot
  // and now current direction if North
  switch(currentDirection){
    //if currntion direction is nort when turn left, it will move direction to west
    case Direction.north: return Direction.west;
    //if currntion direction is west when turn left, it will move direction to south
    case Direction.west:  return Direction.south;
    //if currntion direction is south when turn left, it will move direction to east
    case Direction.south: return Direction.east;
    //if currntion direction is east when turn left, it will move direction to north
    case Direction.east:  return Direction.north;
  }
}

String stringDirection(Direction currntionDirection){
  switch(currntionDirection){
    case Direction.north:{
      return "North";
    }
    case Direction.east:{
      return "East";
    }
    case Direction.south:{
      return "South";
    }
    case Direction.west:{
      return "West";
    }

  }
}