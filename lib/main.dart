
import 'package:Roll_Call/pages/onboarding.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'pages/barcode_scan.dart';


//void main() {
//  runApp(new MaterialApp(
////    home: prefs.getBool('LoadOB') != null ? new LandingPage() : new Onboarding(),
//
//
//  ));
//}
getCookie() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String cookie = prefs.getString('email') ?? '';
  debugPrint(cookie.toString());
  if (cookie == ''){
    runApp(new MaterialApp(home: new Onboarding(),));
  } else {
    runApp(new MaterialApp(home: new BarcodeScan(),));
  }
}

void main() {
  FirebaseDatabase.instance.setPersistenceEnabled(true);
  getCookie();
}