import 'dart:async';

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:driver_version/Models/drivers.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:driver_version/Models/allUsers.dart';
import 'package:geolocator/geolocator.dart';

String mapKey = "AIzaSyC5yaSHnfGHgSKmInopCAtPzmwXZIQjLjE";

final assestsAudioPlayer = AssetsAudioPlayer();

StreamSubscription<Position> homeTabPageStreamSubscription;

StreamSubscription<Position> rideStreamSubscription;

User firebaseUser;

Users userCurrentInfo;

User currentfirebaseUser;

Position currentPosition;

Drivers driversInfo;

String title = "";

double starCounter = 0.0;
