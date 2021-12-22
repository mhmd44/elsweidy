import 'package:elsweidy/components/components.dart';
import 'package:elsweidy/components/constants.dart';
import 'package:flutter/material.dart';

import 'myCart.dart';
import 'search.dart';

class MyOrders extends StatefulWidget {
  const MyOrders({Key key}) : super(key: key);

  @override
  _MyOrdersState createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
//  double widthOfContainer =double.infinity;
int index=0;
  @override
  Widget build(BuildContext context) {
    double parentWidth=MediaQuery.of(context).size.width;
    double childWidth=MediaQuery.of(context).size.width/2;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Center(
            child: Text(
              'My orders',
              style: TextStyle(color: Color(0xff110802), fontSize: 18),
            )),
        leading: Icon(Icons.arrow_back_ios),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: parentWidth,
                height: 53,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(23), color: Color(0xffCCE6FF)),
                child: Row(
                  children: [
                  InkWell(
                    onTap: (){
                      setState(() {
                        index=0;
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                    width: childWidth-10,
                    height: 53
                    ,decoration: BoxDecoration(borderRadius: BorderRadius.circular(23), color: colorBlueOfBuildScrolItem),
                    child: Text('Current', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w700),),
                    ),
                  ),
                    // InkWell(
                    //   onTap: (){
                    //     setState(() {
                    //       index=1;
                    //     });
                    //   },
                    //   child: Container(
                    //     width: childWidth-10,
                    //     alignment: Alignment.center
                    //   ,decoration: BoxDecoration(borderRadius: BorderRadius.circular(23), color: colorBlueOfBuildScrolItem),
                    //   child: Text('Current', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w700),),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: firstContentOfListView(),
            ),
            ListView.separated(

              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) => secondContentOfListView(),
              separatorBuilder: (context, index) => const SizedBox(height: 30,),
              itemCount: 3,
            ),
            SizedBox(height: 30,)

          ],
        ),
      ),
    );
  }
}


Widget firstContentOfListView()=>Row(
  children: [
    Container(
      width: 10,
      height: 10,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Color(0xff004B93)),

    ),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Text('Order ID : #2548796', style: TextStyle(color: Color(0xff004B93), fontSize: 15),),
    ),
    Spacer(),
    Text('22 Apr, 2022', style: TextStyle(color: Color(0xff666666), fontSize: 13),),
  ],
);




Widget secondContentOfListView()=>
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: 365,
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all( 5.0),
                  child: Row(
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                                color: Color(0xff1A6BB9),
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          Text('1', style: TextStyle(color: Colors.white),),
                        ],

                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: Container(
                            width: 30,
                            height: 30
                            ,child: Image.asset('assets/images/electricWire.png')),
                      ),
                      Text('2',style: TextStyle(color: Color(0xff004B93), fontSize: 13,)),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: Text('Medium hose',style: TextStyle(color: Colors.black, fontSize: 13,)),
                      ),
                      SizedBox(width: 10,),
                      Text('500 sr',style: TextStyle(color: colorofHintText, fontSize: 13,)),

                    ],
                  ),
                ),
                Container(
                  height: .5,
                  color: primarycolor,
                ),
                Padding(
                  padding: const EdgeInsets.all( 5.0),
                  child: Row(
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                                color: Color(0xff1A6BB9),
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          Text('2', style: TextStyle(color: Colors.white),),
                        ],

                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: Container(
                            width: 30,
                            height: 30
                            ,child: Image.asset('assets/images/electricWire.png')),
                      ),
                      Text('2',style: TextStyle(color: Color(0xff004B93), fontSize: 13,)),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: Text('Medium hose',style: TextStyle(color: Colors.black, fontSize: 13,)),
                      ),
                      SizedBox(width: 10,),
                      Text('500 sr',style: TextStyle(color: colorofHintText, fontSize: 13,)),

                    ],
                  ),
                ),
                Container(
                  height: .5,
                  color: primarycolor,
                ),
                Padding(
                  padding: const EdgeInsets.all( 5.0),
                  child: Row(
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                                color: Color(0xff1A6BB9),
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          Text('3', style: TextStyle(color: Colors.white),),
                        ],

                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: Container(
                            width: 30,
                            height: 30
                            ,child: Image.asset('assets/images/electricWire.png')),
                      ),
                      Text('2',style: TextStyle(color: Color(0xff004B93), fontSize: 13,)),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: Text('Medium hose',style: TextStyle(color: Colors.black, fontSize: 13,)),
                      ),
                      SizedBox(width: 10,),
                      Text('500 sr',style: TextStyle(color: colorofHintText, fontSize: 13,)),

                    ],
                  ),
                ),
                Container(
                  height: .5,
                  color: primarycolor,
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text('Order Summary', style: styleOfNames()),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    children: [
                      Text('Price',style: styleOfHintNamesMyCart(),),
                      Spacer(),
                      Text('21.00 sr',style: styleOfHintNamesMyCart(),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    children: [
                      Text('Discount',style: styleOfHintNamesMyCart()),
                      Spacer(),
                      Text('11.00 sr', style: TextStyle(color: primarycolor, fontSize: 18),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    children: [
                      Text('Shipping',style: styleOfHintNamesMyCart()),
                      Spacer(),
                      Text('00.00 sr', style: styleOfHintNamesMyCart()),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    children: [
                      Text('Tax',style: styleOfHintNamesMyCart()),
                      Spacer(),
                      Text('22.00 sr', style: styleOfHintNamesMyCart()),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    children: [
                      Text('Total price',style: styleOfNames()),
                      Spacer(),
                      Text('31.00 sr', style: styleOfNames()),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Transform.translate(
            offset: Offset(22.5,22.5 ),
            child: defaultButton(
                width: 250,
                height: 45,
                childWidget:
            Row(
              children: [
                Icon(Icons.shopping_basket_outlined, color:Colors.white,),
                SizedBox(width: 10,),
                Text('Track Your Order' ,style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),),
              ],
            )
            ),
          )
        ],

      ),
    );