import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData lightTheme= ThemeData(

  scaffoldBackgroundColor: Colors.white,
  appBarTheme:  const AppBarTheme(
    elevation: 0.0,
    backwardsCompatibility:false,
    systemOverlayStyle:  SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
    ),
    backgroundColor: Colors.white,
    titleTextStyle: TextStyle(
        fontFamily: 'Bahij_TheSansArabic-Plain',
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.bold
    ),
    iconTheme: IconThemeData(
        color: Colors.black
    ),
  ),
  fontFamily: "Bahij_TheSansArabic-Plain",
  primarySwatch: Colors.blue,
  primaryColor: Color(0xFF00B6AC),
  accentColor: Color(0xFFf9c23b),
  primaryColorLight: Color(0xFFfdeec8),
  primaryColorDark: Color(0xFF00a79b),
  visualDensity: VisualDensity.adaptivePlatformDensity,
);