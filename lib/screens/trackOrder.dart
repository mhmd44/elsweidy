import 'package:elsweidy/components/components.dart';
import 'package:elsweidy/components/constants.dart';
import 'package:elsweidy/screens/checkOut.dart';
import 'package:elsweidy/screens/myOrders.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home.dart';
import 'search.dart';

class TrackOrder extends StatefulWidget {
  const TrackOrder({Key key}) : super(key: key);

  @override
  _TrackOrderState createState() => _TrackOrderState();
}

class _TrackOrderState extends State<TrackOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Center(
            child: Text(
          'Track order',
          style: TextStyle(color: Color(0xff110802), fontSize: 18),
        )),
        leading: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> MyOrders()));
            },
            child: Icon(Icons.arrow_back_ios)),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    child: Icon(
                      Icons.car_rental,color: primarycolor,
                    )),
                Container(
                  width: 60,
                  height: 4,
                  color: primarycolor,
                ),
                Container(
                      child: Icon(
                      Icons.car_rental,color: primarycolor,
                    )),
                Container(
                  width: 60,
                  height: 4,
                  color: primarycolor,
                ),
                Container(
                      child: Icon(
                      Icons.car_rental,
                    )),
                Container(
                  width: 60,
                  height: 4,
                  color: primarycolor,
                ),
                Container(
                    child: Icon(
                      Icons.car_rental,
                    )),
              ],
            ),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Order Payed', style: TextStyle(color: primarycolor, fontSize: 12),),
                Text('On Shipping', style: TextStyle(color: primarycolor, fontSize: 12),),
                Text('Received', style: TextStyle( fontSize: 12),),
                Text('Rate', style: TextStyle( fontSize: 12),)
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 85,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffF4F4F4),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Order ID :',
                          style: TextStyle(
                              color: colorGreyOfCheckout,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '#2548796',
                          style:
                              TextStyle(color: Color(0xff29201A), fontSize: 13),
                        ),
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Text(
                          'Order Date :',
                          style: TextStyle(
                              color: colorGreyOfCheckout,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '22 / 5/ 2222',
                          style:
                              TextStyle(color: Color(0xff29201A), fontSize: 13),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Divider(),
            itemsAndIconOfCheckout(),
            Container (
          width: double.infinity,
          height: 100,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: -4,
                  blurRadius: 5,
                  offset: Offset(0, 0),
                )
              ]),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child:
            Row(
              children: [
                Image.asset('assets/images/electricWire.png'),
                SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Medium hose', style: styleOfNames(),),
                    smallStars(),
                    Text('500 sr',style: styleOfNames(),),
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                  Container(
                    alignment: Alignment.center,
                    width: 95,
                    height: 32
                    ,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: primarycolor)
                    ,child: Text('Packed', style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),),
                  ),
                    SizedBox(height: 10,),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),  border: Border.all(color: colorBlueOfBuildScrolItem)),
                        ),
                        Text('2', style: TextStyle(color: colorBlueOfBuildScrolItem),),
                      ],
                    ),
                  ],
                ),

              ],
            ),
          ),
        ),
            SizedBox(height: 10,),
            Container (
          width: double.infinity,
          height: 100,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: -4,
                  blurRadius: 5,
                  offset: Offset(0, 0),
                )
              ]),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child:
            Row(
              children: [
                Image.asset('assets/images/electricWire.png'),
                SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Medium hose', style: styleOfNames(),),
                    smallStars(),
                    Text('500 sr',style: styleOfNames(),),
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                  Container(
                    alignment: Alignment.center,
                    width: 95,
                    height: 32
                    ,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: colorBlueOfBuildScrolItem)
                    ,child: Text('Processing', style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),),
                  ),

                  ],
                ),

              ],
            ),
          ),
        ),
            SizedBox(height: 10,),
            Container (
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: -4,
                      blurRadius: 5,
                      offset: Offset(0, 0),
                    )
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child:
                Row(
                  children: [
                    Image.asset('assets/images/electricWire.png'),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Medium hose', style: styleOfNames(),),
                        smallStars(),
                        Text('500 sr',style: styleOfNames(),),
                      ],
                    ),
                    Spacer(),
                    Column(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: 95,
                          height: 32
                          ,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: primarycolor)
                          ,child: Text('Packed', style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),),
                        ),
                        SizedBox(height: 10,),
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),  border: Border.all(color: colorBlueOfBuildScrolItem)),
                            ),
                            Text('2', style: TextStyle(color: colorBlueOfBuildScrolItem),),
                          ],
                        ),
                      ],
                    ),

                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Row(

              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('''Have a trouble in 
 your order ?''', style: TextStyle(color: Colors.black, fontSize: 17),)
                  ],
                ),
                Spacer(),
                Container(
                  alignment: Alignment.center,
                  width: 120,
                  height: 45
                  ,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: primarycolor)
                  ,child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.call, color: Colors.white,),
                    SizedBox(width: 10,),
                    Text('Call us', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),),
                  ],
                ),

                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}





