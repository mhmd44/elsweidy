import 'package:elsweidy/components/components.dart';
import 'package:elsweidy/screens/home.dart';

import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/Logo.png'),
            SizedBox(
              height: 30,
            ),
            Text(
              'Welcome',
              style: TextStyle(
                  color: Color(0xff2D2D2D),
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the indus',
              style: TextStyle(color: Color(0xff707070), fontSize: 18),
            ),
            SizedBox(height: 30,),
            InkWell(
              onTap:(){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
              }
              ,child: defaultButton(childWidget: Text('Get Start',style: styleOfDefaultButton(),), onpressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (context)=> Home()),);
              }
              ),
            ),
          ],
        ),
      ),
    );
  }
}
