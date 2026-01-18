import 'package:assignment_3/models/person.dart';

class Driver extends Person {
  final String _vehicle;

  Driver(super.name, super.age, this._vehicle);

  String get vehicle => _vehicle;

  @override
  String getInfo() {
    return "Name: $name, Age: $age, Vehicle: $vehicle";
  }
}
