import 'package:elsweidy/components/components.dart';
import 'package:elsweidy/components/constants.dart';
import 'package:elsweidy/screens/allCategories.dart';
import 'package:elsweidy/screens/checkOut.dart';
import 'package:flutter/material.dart';

import 'home.dart';
import 'search.dart';

class MyCart extends StatefulWidget {
  const MyCart({Key key}) : super(key: key);

  @override
  _MyCartState createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap:(){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
          }
            ,child: Icon(Icons.shopping_basket_outlined, color: primarycolor,)),
        title: Center(child: Text('My Cart', style: styleOfNames(),)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListView.separated(

                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => myCartItem(index),
                separatorBuilder: (context, index) => const SizedBox(height: 20,),
                itemCount: 3,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  children: [
                    Icon(Icons.car_rental, color: primarycolor,),
                    SizedBox(width: 5,),
                    Text('Shipping To', style: TextStyle(color: primarycolor),),
                    SizedBox(width: 5,),
                    InkWell(
                        onTap: (){
                          showModalBottomSheet(
                              isScrollControlled: true,
                              context: context,
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(25),
                                    topLeft: Radius.circular(25)),
                              ),
                              builder: (context) {
                                return
                                  Container(
                                    margin: EdgeInsets.all(10),
                                    height: 380,
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                                          child: childContainer(backgroundcolor: Color(0xffF4F4F4), label: 'Country / Region', heightOfContainer: 50),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                                          child: childContainer(backgroundcolor: Color(0xffF4F4F4), label: 'Street Adress', heightOfContainer: 50),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                                          child: childContainer(backgroundcolor: Color(0xffF4F4F4), label: 'City', heightOfContainer: 50),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                                          child: childContainer(backgroundcolor: Color(0xffF4F4F4), label: 'State', heightOfContainer: 50),
                                        ),
                                      defaultButton(childWidget: Text('ok',style: styleOfDefaultButton(), ),width: 200, height: 50
                                      )
                                      ],
                                    ),
                                  );
                              });
                        }
                        ,child: smallContainerOfAllCategories(icona: Icon(Icons.keyboard_arrow_down, color: primarycolor, size: 18,) )),
                  ],
                ),
              ),
              Stack(
                alignment: Alignment.centerRight,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: childContainer(backgroundcolor: Color(0xffCCE6FF), label: 'coupon code', heightOfContainer: 50,type: TextInputType.phone),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 100,
                    height: 50
                    ,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: colorBlueOfBuildScrolItem)
                    ,child: Text('Apply', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),),
                  ),
                ],

              ),
              Text('Order Summary', style: styleOfNames()),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  children: [
                    Text('Price',style: styleOfHintNamesMyCart(),),
                    Spacer(),
                    Text('21.00 sr',style: styleOfHintNamesMyCart(),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  children: [
                    Text('Discount',style: styleOfHintNamesMyCart()),
                    Spacer(),
                    Text('11.00 sr', style: TextStyle(color: primarycolor, fontSize: 18),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  children: [
                    Text('Shipping',style: styleOfHintNamesMyCart()),
                    Spacer(),
                    Text('00.00 sr', style: styleOfHintNamesMyCart()),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  children: [
                    Text('Tax',style: styleOfHintNamesMyCart()),
                    Spacer(),
                    Text('22.00 sr', style: styleOfHintNamesMyCart()),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  children: [
                    Text('Total price',style: styleOfHintNamesMyCart()),
                    Spacer(),
                    Text('31.00 sr', style: styleOfHintNamesMyCart()),
                  ],
                ),
              ),
              SizedBox(height: 20,),
             InkWell(
                 onTap:(){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>CheckOut()));
                 }
             ,child: Center(child: defaultButton(childWidget: Text('Continue', style: styleOfDefaultButton(),))))
            ],
          ),
        ),
      ),
    );
  }
}




Widget myCartItem(index)=> Dismissible(
  direction: DismissDirection.endToStart,
  key: Key("$index"),
  child:   Container(

    width: double.infinity,

    height: 80,

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

            mainAxisAlignment: MainAxisAlignment.end,

            children: [

              Row(

                children: [

                  Icon(Icons.remove_circle_outline_outlined, color: colorBlueOfBuildScrolItem,size: 30),

                  SizedBox(width: 5,),

                  Text('1',style: TextStyle(color: colorBlueOfBuildScrolItem,fontSize: 16),),

                  SizedBox(width: 5,),

                  Icon(Icons.add_circle_outline_outlined, color: colorBlueOfBuildScrolItem,size: 30,),

                ],

              ),

            ],

          ),

        ],

      ),

    ),

  ),
);



TextStyle styleOfHintNamesMyCart()=> TextStyle(color: Color(0xff828282), fontSize: 18);