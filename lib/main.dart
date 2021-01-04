import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_deep_voice/pages/homePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Project Deep Voice',
      theme: ThemeData.light().copyWith(
        backgroundColor: Colors.white,
        primaryColor: Colors.white,
        accentColor: Colors.white,
        textTheme: TextTheme(
          headline1: GoogleFonts.poppins(
              fontSize: 97, fontWeight: FontWeight.w300, letterSpacing: -1.5),
          headline2: GoogleFonts.poppins(
              fontSize: 61, fontWeight: FontWeight.w300, letterSpacing: -0.5),
          headline3: GoogleFonts.poppins(
              fontSize: 48, fontWeight: FontWeight.w400),
          headline4: GoogleFonts.poppins(
              fontSize: 34, fontWeight: FontWeight.w400, letterSpacing: 0.25),
          headline5: GoogleFonts.poppins(
              fontSize: 24, fontWeight: FontWeight.w400),
          headline6: GoogleFonts.poppins(
              fontSize: 20, fontWeight: FontWeight.w500, letterSpacing: 0.15),
          subtitle1: GoogleFonts.poppins(
              fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.15),
          subtitle2: GoogleFonts.poppins(
              fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 0.1),
          bodyText1: GoogleFonts.openSans(
              fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.5),
          bodyText2: GoogleFonts.openSans(
              fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.25),
          button: GoogleFonts.openSans(
              fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 1.25),
          caption: GoogleFonts.openSans(
              fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4),
          overline: GoogleFonts.openSans(
              fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5),
        ).apply(displayColor: Colors.black, bodyColor: Colors.black),
      ),
      home: HomePage(),
    );
  }
}