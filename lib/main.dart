
import 'package:elsweidy/screens/checkOut.dart';
import 'package:elsweidy/screens/search.dart';
import 'package:flutter/material.dart';


import 'components/themes.dart';
import 'screens/initialSplash.dart';
import 'screens/myCart.dart';
import 'screens/productShow.dart';




void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      home:  MyCart(),
    );
  }
}


