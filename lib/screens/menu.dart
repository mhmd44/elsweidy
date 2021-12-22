import 'package:elsweidy/components/constants.dart';
import 'package:elsweidy/screens/aboutUs.dart';
import 'package:elsweidy/screens/contactUs.dart';
import 'package:elsweidy/screens/privacyPolicy.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({Key key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    return Padding(
      padding:  EdgeInsets.only(top: statusBarHeight),
      child: ClipRRect(
        borderRadius: BorderRadius.only(topRight: Radius.circular(40), bottomRight: Radius.circular(40),),
        child: Drawer(
           backgroundColor: colorBlueOfBuildScrolItem,

          child: SingleChildScrollView(
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
                      child: Image.asset('assets/images/profile.png')),
                  Text('Aya Mohamed', style: TextStyle(color: colorOfDrawer, fontSize: 12, fontWeight: FontWeight.w700),),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Text('ayamohamed@example.com',style: TextStyle(color: colorOfDrawer, fontSize: 12, ),),
                  ),
                  Container(
                    width: double.infinity,
                    height: .5,
                    color: Color(0xff1658A1),
                  ),
                 // Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Row(
                      children: [
                        Icon(Icons.house, color: Colors.white,),
                        SizedBox(width: 5,),
                        Text('Home', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Row(
                      children: [
                        Icon(Icons.shopping_bag_outlined, color: Colors.white,),
                        SizedBox(width: 5,),
                        Text('My orders', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),)
                      ],
                    ),
                  ),
                  InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> PrivacyPolicy()));
                      }
                      ,child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: Row(
                        children: [
                          Icon(Icons.privacy_tip_outlined, color: Colors.white,),
                          SizedBox(width: 5,),
                          Text('Privacy policy', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),)
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Row(
                      children: [
                        Icon(Icons.share, color: Colors.white,),
                        SizedBox(width: 5,),
                        Text('Share app', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),)
                      ],
                    ),
                  ),
                  InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> AboutUs()));
                      }
                      ,child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: Row(
                        children: [
                          Icon(Icons.beenhere_sharp, color: Colors.white,),
                          SizedBox(width: 5,),
                          Text('About us', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),)
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> ContactUs()));
                  }
                  ,child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: Row(
                        children: [
                          Icon(Icons.phone, color: Colors.white,),
                          SizedBox(width: 5,),
                          Text('Contact us', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),)
                        ],
                      ),
                    ),
                  ),
                 // Spacer(),
                  //Expanded(child: SizedBox()),
                  SizedBox(height: 60,),
                  Container(
                    width: double.infinity,
                    height: .5,
                    color: Color(0xff1658A1),
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(vertical: 10.0),
                    child: Row(
                      children: [
                        Icon(Icons.logout, color: Colors.white,),
                        SizedBox(width: 5,),
                        Text('Log out', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),)
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
