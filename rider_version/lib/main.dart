import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rider_version/dataHandler/appData.dart';
import 'package:rider_version/screens/about_screen.dart';
import 'package:rider_version/screens/login_screen.dart';
import 'package:rider_version/screens/mainscreen.dart';
import 'package:rider_version/screens/sign_up.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

DatabaseReference usersRef =
    FirebaseDatabase.instance.reference().child("users");

DatabaseReference driversRef =
    FirebaseDatabase.instance.reference().child("Ride Requests");

DatabaseReference newRequestRef =
    FirebaseDatabase.instance.reference().child("drivers");

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppData(), //to access app data throughout the app
      child: MaterialApp(
        title: 'DriveThru',
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
          AboutScreen.idscreen: (context) => AboutScreen(),
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
