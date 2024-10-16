class shape{
  int? _x;
  int? _y;
  int width;
  int height;
  String? bgColor;
  shape(this._x,this._y,this.width,this.height);

  get x => _x;
  get y => _y;

  @override
  String toString(){
    return ('width: $x, height: $y');
  }
}
void main(List<String> args) {
  // shape s1 = shape(0, 0,);
  // print(s1);
}