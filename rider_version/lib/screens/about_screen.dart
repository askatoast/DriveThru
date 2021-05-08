import 'package:flutter/material.dart';
import 'package:rider_version/screens/mainscreen.dart';

class AboutScreen extends StatefulWidget {
  static const String idscreen = "about";

  @override
  _MyAboutScreenState createState() => _MyAboutScreenState();
}

class _MyAboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: <Widget>[
            Container(
              height: 220,
              child: Center(
                child: Image.asset('images/uberx.png'),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30, left: 24, right: 24),
              child: Column(
                children: <Widget>[
                  Text(
                    'Drive Thru',
                    style: TextStyle(fontSize: 55, fontFamily: 'Brand Bold'),
                  ),
                  SizedBox(height: 30),
                  Text(
                    'Developed by Ashutosh Acharya, '
                    'https://github.com/askatoast',
                    style: TextStyle(fontFamily: "Brand-Bold"),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            FlatButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, MainScreen.idscreen, (route) => false);
                },
                child: const Text('Go Back',
                    style: TextStyle(fontSize: 18, color: Colors.black)),
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0))),
          ],
        ));
  }
}
