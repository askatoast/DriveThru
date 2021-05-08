import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:rider_version/Models/allUsers.dart';

String mapKey = "AIzaSyC5yaSHnfGHgSKmInopCAtPzmwXZIQjLjE";

User firebaseUser;

Users userCurrentInfo;

int driverRequestTimeout = 30;

String statusRide = "";

String carDetailsOfDriver = "";

String driverName = "";

String driverPhone = "";

String rideStatus = "Driver is Coming";

double starCounter = 0.0;
String title = "";
String carRideType = "";

String serverToken =
    "key=AAAAhVQn5TE:APA91bHPrvzjf6_7zXJKObKpiHRRDxuYJtt7U-P97g9ARacK6fGuGqO3YT0RZGSYVm3sJVZt-R-tHSfoVo8rhvnHn-u2K_5efDzrL8_nMtN4Ndn5TfWw6rKeqj4pNJjN6IUiY3NAEn85";
