import 'package:elsweidy/components/constants.dart';
import 'package:elsweidy/screens/hose.dart';
import 'package:elsweidy/screens/search.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class AllCategories extends StatefulWidget {
  const AllCategories({Key key}) : super(key: key);

  @override
  _AllCategoriesState createState() => _AllCategoriesState();
}

class _AllCategoriesState extends State<AllCategories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            InkWell(
                onTap:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                }
            ,child: Icon(Icons.arrow_back_ios, color: Color(0xff414141),)),
            InkWell(
                onTap:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Search()));
                }
            ,child: Icon(Icons.search, color: primarycolor,))
          ],
        ),
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 10.0),
        child:Stack(
          children: [
            Text("All Categories", style: TextStyle(color: Color(0xff110802), fontSize: 18),),
         Container(
           child:    Padding(
             padding: const EdgeInsets.only(top: 30),
             child: Row(
               children: [
                 Expanded(
                   flex: 1,
                   child: ListView.separated(
                       itemBuilder: (context, index) => buildCategoryItem(),
                       separatorBuilder: (context, index) => SizedBox(height: 10),
                       itemCount: 20),
                 ),
                 SizedBox(width: 15,),
                 Expanded(
                   flex: 3,
                   child: ListView.separated(
                       itemBuilder: (context, index) => InkWell(
                           onTap:(){
                             Navigator.push(context, MaterialPageRoute(builder: (context)=>Hose()));
                           }
                       ,child: buildHoseItem ()),
                       separatorBuilder: (context, index) => SizedBox(height: 10),
                       itemCount: 20),
                 ),
               ],
             ),
           ),
         )
          ],
        ),
      ),
    );
  }
}





Widget buildCategoryItem() =>
    Container(
    width: 80,
    height: 70,
    decoration: BoxDecoration(
        color: colorBlueOfBuildScrolItem,
        borderRadius: BorderRadius.circular(10)),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/lambs.png', width: 27,height: 27,),
        SizedBox(height: 10,),
        Text('Lamps', style: TextStyle(fontSize: 14, color: Colors.white), )
      ],
    ),
    );



Widget buildHoseItem ()=> Container(
  child: Row(
    children: [
      Text('Hose 1', style: TextStyle(fontSize: 18),),
      Spacer(),
      smallContainerOfAllCategories(icona: Icon(Icons.arrow_forward_ios, color: primarycolor,size: 18,)),

    ],
  ),
  width: double.infinity,
  height: 48,
  decoration: BoxDecoration( color: Colors.white ,borderRadius: BorderRadius.circular(5),boxShadow: [BoxShadow(
    color: Colors.grey,spreadRadius: -5,blurRadius: 5,offset: Offset(0, 0),
  )]),
);








Widget smallContainerOfAllCategories({Widget icona})=>Stack(
  alignment: Alignment.center,
  children: [
    Container(
      width: 24,
      height: 24,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.black,spreadRadius: -5,blurRadius: 5,offset: Offset(0, 0),
          )]),
    ),
    icona
  ],
);