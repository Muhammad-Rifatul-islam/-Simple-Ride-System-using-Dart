import 'package:assignment_3/service/ride.dart';

class CarRide implements Ride {
  final double _baseFare = 100.0;  // Base fare for car ride
  final double _farePerKm = 50.0;  // Fare per kilometer

  double get baseFare => _baseFare;
  double get farePerKm => _farePerKm;

  @override
  double calculateFare(double distance) {
    return baseFare + (distance * farePerKm);
  }

  @override
  void printFare({required Ride ride, required double distance}) {
    double fare = ride.calculateFare(distance);
   print("Ride Fare: ৳$fare");
  }
}
