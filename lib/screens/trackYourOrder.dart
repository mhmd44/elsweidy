import 'package:elsweidy/components/components.dart';
import 'package:elsweidy/components/constants.dart';
import 'package:elsweidy/screens/trackOrder.dart';
import 'package:flutter/material.dart';

class TrackYourOrder extends StatefulWidget {
  const TrackYourOrder({Key key}) : super(key: key);

  @override
  _TrackYourOrderState createState() => _TrackYourOrderState();
}

class _TrackYourOrderState extends State<TrackYourOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBlueOfBuildScrolItem ,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/trackOrder.png'),
            SizedBox(height: 10,),
            Text('Purchase Success', style: TextStyle(color: Colors.white,fontSize: 20, fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            Text('Lorem ipsum dolor sit seo aimet, consectetur adipiscig elit seed do eiusmod tempor incididut labore et doljgore magna aliqua. Ut enim ad minimkj veam, nuittte  qukinostrud exeritatll ssdstr sint occdssdaet cddggfgfhupi',
              style: TextStyle(color: Colors.white,fontSize: 16),),
            InkWell(
              onTap:(){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>TrackOrder()));
              }
            ,child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 30.0),
                child: defaultButton(childWidget: Row(
                  children: [
                    Icon(Icons.car_rental, color: primarycolor,size: 30,),
                    SizedBox(width: 10,),
                    Text('Track Your Order', style: TextStyle(color: primarycolor, fontSize: 20),)
                  ],
                ), backcolor: Colors.white, textcolor: primarycolor),
              ),
            )
          ],
        ),
      ),
    );
  }
}
