import 'package:Audvid/home.dart';
import 'package:Audvid/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: "splash",
    routes: {
      "splash": (context) => splashScreen(),
      "home": (context) => LinuxTerminal(),
    },
    theme: ThemeData.dark(),
    debugShowCheckedModeBanner: false,
  ));
}
