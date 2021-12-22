import 'package:elsweidy/components/components.dart';
import 'package:elsweidy/components/constants.dart';
import 'package:elsweidy/screens/allCategories.dart';
import 'package:elsweidy/screens/search.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class ProductShow extends StatefulWidget {
  const ProductShow({Key key}) : super(key: key);

  @override
  _ProductShowState createState() => _ProductShowState();
}

class _ProductShowState extends State<ProductShow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Row(
          children: [
            SizedBox(
              width: 8,
            ),
            InkWell(
                onTap:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                }
                ,child: Icon(Icons.arrow_back_ios)),
            Spacer(),
            Icon(
              Icons.share,
              color: primarycolor,
            )
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Icon(
              Icons.favorite_border_outlined,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 320,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            spreadRadius: -5,
                            blurRadius: 5,
                            offset: Offset(0, 0),
                          )
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  width: 50,
                                  height: 25
                                  ,child: Image.asset('assets/images/sale.png',fit: BoxFit.cover,)),
                              Container(

                                width: 150,
                                height: 150,
                                child: Image.asset('assets/images/electricWire.png', fit: BoxFit.cover,),),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              smallContainerOfAllCategories(icona: Icon(Icons.arrow_back_ios, color: primarycolor,)),
                              Container(
                                  width:58 ,
                                  height: 52,
                                  child: Image.asset('assets/images/electricWire.png', fit: BoxFit.cover,)),
                              Container(
                                  width:58 ,
                                  height: 52,
                                  child: Image.asset('assets/images/electricWire.png', fit: BoxFit.cover,)),
                              Container(
                                  width:58 ,
                                  height: 52,
                                  child: Image.asset('assets/images/electricWire.png', fit: BoxFit.cover,)),
                              smallContainerOfAllCategories(icona: Icon(Icons.arrow_forward_ios, color: primarycolor,)),

                            ],
                          ),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Medium hose', style: styleOfNames()),
                                  smallStars(),
                                ],
                              ),
                              Spacer(),
                              Text('500 sr',style: styleOfNames()),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    child: Text(

                      'Lorem ipsum dolor sihjijt amet,Lorem ipsum dolor sihjijt amet, consetur adipicig eliuet sked doconsetur adipicig eliuet sked doLorem ipsum dolor sihjijt amet,     qukinostrud exercitation ullamco labdforis  labdforistr sint occaecat mollit anim id est laborum'
                      , textAlign: TextAlign.start,),
                  ),
                  SizedBox(height: 30 ,),
                  Text('Read More',style: TextStyle(decoration: TextDecoration.underline,height: 1.5,
                    fontSize: 15,
                  ), ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.remove , color: colorBlueOfBuildScrolItem,),
                    SizedBox(width: 5,),
                    Text('1', textAlign: TextAlign.center,),
                    SizedBox(width: 5,),
                    Icon(Icons.add, color: colorBlueOfBuildScrolItem,),
                    Spacer(),
                    defaultButton(childWidget:  Row(

                      children: [
                        Text('Add to cart' ,style: styleOfDefaultButton(),),
                        SizedBox(width: 20,),
                        Icon(Icons.shopping_basket_outlined, color:Colors.white,)
                      ],
                    ),
                      width: 215,
                      height: 50
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
