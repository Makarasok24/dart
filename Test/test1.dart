class Point {
  final double x;
  final double y;

  const Point(this.x, this.y);

  Point translatePoint(double dx,double dy) {
    return Point(x+dy, y+dy);
  }
  @override
  String toString(){
    return ('x: $x , y : $y');
  }
}

void main() {
  Point p = Point(3, 2);
  p.translatePoint(1,2);
  print(p);
}
