class Person {

  final String _name;
  final int _age;


  Person(this._name, this._age);


  String get name => _name;
  int get age => _age;


  String getInfo() {
    return "Name: $name, Age: $age";
  }
}

