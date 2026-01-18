import 'dart:io';


import 'models/driver.dart';
import 'service/ride.dart';
import 'service/ride_implementation/bike_ride_imp.dart';
import 'service/ride_implementation/car_ride_imp.dart';


void main() {
  print("========= SIMPLE RIDE SYSTEM =========");

  stdout.write("Enter Driver Name: ");
  String name = stdin.readLineSync()!;

  stdout.write("Enter Driver Age: ");
  int age = int.parse(stdin.readLineSync()!);

  print("\nSelect Vehicle Type:");
  print("1. Bike");
  print("2. Car");
  stdout.write("Enter choice (option -> 1 - 2: ");
  int choice = int.parse(stdin.readLineSync()!);

  Ride ride;
  String vehicleType;

  if (choice == 1) {
    ride = BikeRide();
    vehicleType = "Bike";
  } else if (choice == 2) {
    ride = CarRide();
    vehicleType = "Car";
  } else {
    print("Invalid Choice!");
    return;
  }

  Driver driver = Driver(name, age, vehicleType);

  print("-----------Driver Info-------------------");
  print(driver.getInfo());

  stdout.write("\nEnter Ride Distance (km): ");
  double distance = double.parse(stdin.readLineSync()!);

  print("-------------------Ride fare--------------------");
  printFare(ride: ride,distance: distance);
}






void printFare({required Ride ride, required double distance}) {
  double fare = ride.calculateFare(distance);

  print("Distance: $distance km");
  print("Total Fare: $fare TK");
}
