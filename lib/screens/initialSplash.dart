import 'dart:async';

import 'package:flutter/material.dart';

import 'splash.dart';

class InitialSplash extends StatefulWidget {
  const InitialSplash({Key key}) : super(key: key);

  @override
  _InitialSplashState createState() => _InitialSplashState();
}

class _InitialSplashState extends State<InitialSplash> {
  @override
  void initState() {
    Timer(
        Duration(seconds: 3),
            () => Navigator.push(context, MaterialPageRoute(builder: (context)=>Splash())));
    super.initState();
  }
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5660F),
      body: Center(
        child:Image.asset('assets/images/Logo.png'),
      ),
    );
  }
}
