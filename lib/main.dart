import 'package:assignment_3/models/driver.dart';
import 'package:assignment_3/service/ride.dart';
import 'package:assignment_3/service/ride_implementation/bike_ride_imp.dart';

void main() {

  print("<------------DRIVER INFO------------------>");
  Driver driver = Driver("Mr. Rifat", 25, "Bike");
  print(driver.getInfo());

  print("<------------Ride Fare INFO------------------>");
  Ride ride = BikeRide();

  printFare(ride: ride,distance:  5);
}
