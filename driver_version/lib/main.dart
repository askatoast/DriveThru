import 'package:driver_version/mapConfig.dart';
import 'package:driver_version/screens/carInfo_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:driver_version/dataHandler/appData.dart';
import 'package:driver_version/screens/login_screen.dart';
import 'package:driver_version/screens/mainscreen.dart';
import 'package:driver_version/screens/sign_up.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  currentfirebaseUser = FirebaseAuth.instance.currentUser;

  runApp(MyApp());
}

DatabaseReference usersRef =
    FirebaseDatabase.instance.reference().child("users");

DatabaseReference driversRef =
    FirebaseDatabase.instance.reference().child("drivers");

DatabaseReference newRequestRef =
    FirebaseDatabase.instance.reference().child("Ride Requests");

DatabaseReference rideRequestRef = FirebaseDatabase.instance
    .reference()
    .child("drivers")
    .child(currentfirebaseUser.uid)
    .child("newRide");

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppData(), //to access app data throughout the app
      child: MaterialApp(
        title: 'DriveThru (Driver)',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: FirebaseAuth.instance.currentUser == null
            ? LoginScreen.idscreen
            : MainScreen.idscreen,
        routes: {
          SignupScreen.idscreen: (context) => SignupScreen(),
          LoginScreen.idscreen: (context) => LoginScreen(),
          MainScreen.idscreen: (context) => MainScreen(),
          CarInfoScreen.idscreen: (context) => CarInfoScreen(),
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
