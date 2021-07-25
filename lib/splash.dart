import 'dart:ui';

import 'package:Audvid/home.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class splashScreen extends StatefulWidget {
  @override
  _splashScreenState createState() => _splashScreenState();
}

// ignore: camel_case_types
class _splashScreenState extends State<splashScreen> {
  @override
  Widget build(BuildContext context) {
    var splashScreen = SplashScreen(
      seconds: 5,
      navigateAfterSeconds: new LinuxTerminal(),
      title: Text(
        'AudVid',
        style: GoogleFonts.ubuntuMono(
          fontWeight: FontWeight.bold,
          fontSize: 50.0,
          letterSpacing: 20.0,
        ),
      ),
      image: new Image.asset("assets/splash.png"),
      //backgroundGradient: new LinearGradient(colors: [Colors.cyan, Colors.blue], begin: Alignment.topLeft, end: Alignment.bottomRight),
      backgroundColor: Colors.black54,
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 100.0,
      //onClick: () => print("Flutter Egypt"),
      loaderColor: Colors.white,
    );
    return splashScreen;
  }
}
