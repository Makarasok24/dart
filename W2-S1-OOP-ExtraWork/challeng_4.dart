/*
Objective 
* use named constructor
* use getters
* use operator overloading
 */

void main(List<String> args) {
  Distance d1 = Distance.cms(900);
  //.cms here reffer from named constructor of cms
  Distance d2 = Distance.meters(1000);
  print((d1+d2).kms);
  //.kms here is refferent from getter of kms
}
class Distance{
  final double distance; //initailize as meters

  Distance(this.distance);

  //Named constructor
  Distance.kms(double kiloMeter)
    : distance = kiloMeter  * 1000;

  Distance.meters(double meter)
    : distance = meter;

  Distance.cms(double centimeter)
    : distance = centimeter / 100;

  //getter
  double get kms => distance / 1000;
  double get meters => distance;
  double get cms => distance * 100;

  @override
  String toString(){
    return "$distance";
  }

  Distance operator +(covariant Distance d){
    return Distance(
        this.distance+d.distance
    );
  }
}