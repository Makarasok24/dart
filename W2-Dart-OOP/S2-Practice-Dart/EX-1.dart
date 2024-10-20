enum Skill { FLUTTER, DART, OTHER }

class Address{
  final String street;
  final String city;
  final int zipCode;

  Address(this.street,this.city,this.zipCode);
}
class Employee {
  final String _name;
  final double _baseSalary;
  final List<Skill> _skill;
  final int _yearOfExperience;
  Address _address;

  //contructor
  Employee(this._name, this._baseSalary,this._skill,this._yearOfExperience,this._address);
  //named constructor
  Employee.mobileDeveloper(String name,double baseSalary,int yearOfExperience,Address address)
    :_name = name,
    _baseSalary = baseSalary,
    _skill = [Skill.FLUTTER,Skill.DART],
    _address = address,
    _yearOfExperience = yearOfExperience
    ;

  //getter 
  String get name => _name;
  double get baseSalary => _baseSalary;
  List<Skill> get skill => _skill;
  Address get address => _address;
  int get yearOfExperience => _yearOfExperience;

  //method
  double computeTheSalary(){
    //define salary
    double salary = _baseSalary;
    //each year of experience adds $2,000
    salary += _yearOfExperience * 2000;

    // each skill add bonus
    // flutter $5,000
    // Dart $3,000
    // Other $1,000

    for (var skill in _skill){
      switch(skill){
        case Skill.FLUTTER: salary+= 5000;
        break;
        case Skill.DART: salary+= 3000;
        break;
        case Skill.OTHER: salary+=1000;
        break;
      }
    }

    return salary;
  }

  void printDetails() {
    print('Employee: $name, Base Salary: \$${baseSalary}');
    print("Skills: ${skill.map((skills) => skills.toString().split(".").last)}");
    print("Address: ${address.city} - ${address.street} - ${address.zipCode}");
    print("Experience: $yearOfExperience");
    print("Salary: \$ ${computeTheSalary()}");
  }
}
   
void main() {
  Address ad1 = Address("st146", "Phnom Penh", 12000);
  Address ad2 = Address("st256", "Phnom Penh", 12000);
  var emp1 = Employee("Sokea", 40000, [Skill.OTHER], 3, ad1);
  // var emp1 = Employee('Sokea', 40000);
  emp1.printDetails();

  var emp2 = Employee.mobileDeveloper('Ronan', 45000,5,ad2);
  emp2.printDetails();
}