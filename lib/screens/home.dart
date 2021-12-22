import 'package:elsweidy/components/constants.dart';
import 'package:elsweidy/screens/allCategories.dart';
import 'package:elsweidy/screens/favourite.dart';
import 'package:elsweidy/screens/myCart.dart';
import 'package:elsweidy/screens/productShow.dart';
import 'package:elsweidy/screens/profile.dart';
import 'package:elsweidy/screens/search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'menu.dart';
import 'notifications.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        elevation: 0.0,
        actions: [
          Icon(
            Icons.sensor_window_outlined,
            color: primarycolor,
          ),
        ],
        title: Center(
          child: Container(
            width: 55,
            height: 55,
            child: Image.asset('assets/images/Logo.png'),
          ),
        ),
        leading: InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Search()));
            },
            child: Icon(
              Icons.search,
              color: primarycolor,
            )),
      ),
      drawer:Container(
          width: 240,
          child: Menu()) ,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: spaceContainer(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Container(
                height: 110,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => buildImageItem(),
                  separatorBuilder: (context, index) => const SizedBox(
                    width: 20,
                  ),
                  itemCount: 8,
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: spaceContainer()),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                children: [
                  Text(
                    'Categories',
                    style: TextStyle(fontSize: 18, color: Color(0xff110802)),
                  ),
                  Spacer(),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AllCategories()));
                      },
                      child: Text(
                        'View all',
                        style: TextStyle(fontSize: 15, color: Color(0xff110802)),
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all( 10.0),
              child: Container(
                height: 75,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => buildCategoryItem(),
                  separatorBuilder: (context, index) => const SizedBox(
                    width: 20,
                  ),
                  itemCount: 8,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                children: [
                  Text(
                    'Exclusive deals',
                    style: TextStyle(fontSize: 18, color: Color(0xff110802)),
                  ),
                  Spacer(),
                  Text(
                    'View all',
                    style: TextStyle(fontSize: 15, color: Color(0xff110802)),
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                height: 400,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                  mainAxisSpacing: 10, crossAxisSpacing: 10),
                  itemCount: 6,
                  shrinkWrap: true,
                  //physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProductShow()));
                        },
                        child: gridItem());
                  },
                ),
              ),
            ),
            SizedBox(height: 5,),
            customShowBottomModal(context),
          ],
        ),
      ),
    );
  }
}

Widget buildCategoryItem() => Container(
      width: 70.0,
      height: 62,
      decoration: BoxDecoration(
          color: colorBlueOfBuildScrolItem,
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/lambs.png',
            width: 27,
            height: 27,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Lamps',
            style: TextStyle(fontSize: 14, color: Colors.white),
          )
        ],
      ),
    );

Widget spaceContainer() => Container(
      height: 1,
      color: primarycolor,
    );

Widget buildImageItem() => Container(
      height: 110,
      child: Row(
        children: [
          Image.asset(
            'assets/images/buildImageItem.png',
          ),
          SizedBox(
            width: 10,
          ),
          Image.asset('assets/images/buildImageItem2.png'),
        ],
      ),
    );

Widget gridItem() =>
    Container(
      width: 162,
      height: 160,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: -5,
              blurRadius: 5,
              offset: Offset(0, 0),
            )
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/images/sale.png',
                width: 35,
                height: 20,
                alignment: Alignment.topLeft,
              ),
              Image.asset(
                'assets/images/electricWire.png',
                width: 85,
                height: 85,
                alignment: Alignment.bottomCenter,
              ),
              Icon(
                Icons.brightness_auto_outlined,
                color: primarycolor,
                size: 25,
              )
            ],
          ),
          Text(
            'Medium hose',
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
          Text(
            '500 sr',
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
          Row(
            children: [
              smallStars(),
              Spacer(),
              Stack(
                alignment: Alignment.center,
                children: [
                  smallbasket(),
                  Icon(
                    Icons.shopping_basket_outlined,
                    color: Colors.white,
                  )
                ],
              )
            ],
          )
        ],
      ),
    );

Widget smallStars() => Row(
      children: [
        const Icon(
          Icons.star,
          color: Colors.yellow,
          size: 15,
        ),
        const Icon(
          Icons.star,
          color: Colors.yellow,
          size: 15,
        ),
        const Icon(
          Icons.star,
          color: Colors.yellow,
          size: 15,
        ),
        const Icon(
          Icons.star,
          color: Colors.yellow,
          size: 15,
        ),
        const Icon(
          Icons.star,
          color: Colors.yellow,
          size: 15,
        ),
      ],
    );

Widget smallbasket() => Container(
      width: 56,
      height: 40,
      decoration: BoxDecoration(
          color: colorBlueOfBuildScrolItem,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), bottomRight: Radius.circular(10))),
    );





Widget customShowBottomModal(context)=> Container(
  height: 57,
  decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(10),
  ),boxShadow: [BoxShadow(
    color: Colors.grey,spreadRadius: -5,blurRadius: 5,offset: Offset(0, 0),
  )]),
  child: BottomNavigationBar(
    elevation: 0.0,
    type: BottomNavigationBarType.fixed,
    backgroundColor: Colors.white,
    selectedItemColor: primarycolor,
    unselectedItemColor: colorBlueOfBuildScrolItem,
    selectedFontSize: 14,
    unselectedFontSize: 14,
    onTap: (value) {
      // Respond to item press.
    },
    items: [
      BottomNavigationBarItem(
          icon: Center(
            child: Icon(
              Icons.house_outlined,
            ),
          ),
          title: Text('')),
      BottomNavigationBarItem(
        title: Text(''),
        icon: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> MyCart()));
            },
            child: Icon(Icons.add_shopping_cart)),
      ),
      BottomNavigationBarItem(
        title: Text(''),
        icon: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Favourites()));

            },
            child: Icon(Icons.favorite)),
      ),
      BottomNavigationBarItem(
        title: Text(''),
        icon: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> NotificationSweedy()));

            },
            child: Icon(Icons.notification_important_outlined)),
      ),
      BottomNavigationBarItem(
        title: Text(''),
        icon: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Profile()));
            },
            child: Icon(Icons.person)),
      ),
    ],
  ),
);