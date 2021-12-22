import 'package:elsweidy/components/constants.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {


  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 270,
            decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomRight:Radius.circular(50), bottomLeft: Radius.circular(50) ,), color: primarycolor),
            child: Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Column(
                children: [
                  Text('Profile', style: TextStyle(color: Colors.white, fontSize: 18),),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Row(
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            Container(
                                width: 65,
                                height: 65
                                ,child: Image.asset('assets/images/profile.png')
                            ),
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                Container(
                                  width: 24,
                                  height: 24,
                                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12)),
                                ),
                                Icon(Icons.edit, color: primarycolor, size: 18,)
                              ],
                            ),



                          ],
                        ),
                        SizedBox(width: 10,),
                        Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Aya Mohamed',style: TextStyle(fontSize: 14, color: Colors.white, ),textAlign: TextAlign.start,),
                            Text('ayamohamed@example.com',style: TextStyle(fontSize: 14, color: Colors.white),),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                     Row(
                       children: [
                         Text('Full Name', style: TextStyle(color: profileColor, fontSize: 18),),
                         Spacer(),
                         Icon(Icons.edit, color: Color(0xff1A6BB9),)
                       ],
                     ),
                     SizedBox(height: 10,),
                     Text('Aya Mohamed Ali', style: TextStyle(color: colorofHintText),),
                     SizedBox(height: 10,),
                     Container(
                       height: .5,
                       color: colorofHintText,
                     ),
                     SizedBox(height: 12,),
                   ],),
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                     Row(
                       children: [
                         Text('User Name', style: TextStyle(color: profileColor, fontSize: 18),),
                         Spacer(),
                         Icon(Icons.edit, color: Color(0xff1A6BB9),)
                       ],
                     ),
                     SizedBox(height: 10,),
                     Text('Aya Mohamed ', style: TextStyle(color: colorofHintText),),
                     SizedBox(height: 10,),
                     Container(
                       height: .5,
                       color: colorofHintText,
                     ),
                     SizedBox(height: 12,),
                   ],),
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                     Row(
                       children: [
                         Text('Email', style: TextStyle(color: profileColor, fontSize: 18),),
                         Spacer(),
                         Icon(Icons.edit, color: Color(0xff1A6BB9),)
                       ],
                     ),
                     SizedBox(height: 10,),
                     Text('ayamohamed@example.com', style: TextStyle(color: colorofHintText),),
                     SizedBox(height: 10,),
                     Container(
                       height: .5,
                       color: colorofHintText,
                     ),
                     SizedBox(height: 12,),
                   ],),
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                     Row(
                       children: [
                         Text('Phone No.', style: TextStyle(color: profileColor, fontSize: 18),),
                         Spacer(),
                         Icon(Icons.edit, color: Color(0xff1A6BB9),)
                       ],
                     ),
                     SizedBox(height: 10,),
                     Text('0111111111118111', style: TextStyle(color: colorofHintText),),
                     SizedBox(height: 10,),
                     Container(
                       height: .5,
                       color: colorofHintText,
                     ),
                     SizedBox(height: 12,),
                   ],),
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                     Row(
                       children: [
                         Text('Adress', style: TextStyle(color: profileColor, fontSize: 18),),
                         Spacer(),
                         Icon(Icons.edit, color: Color(0xff1A6BB9),)
                       ],
                     ),
                     SizedBox(height: 10,),
                     Text('Egypt, eldaqahlia, Mansoura, ...', style: TextStyle(color: colorofHintText),),
                     SizedBox(height: 10,),
                     Container(
                       height: .5,
                       color: colorofHintText,
                     ),
                     SizedBox(height: 12,),
                   ],),
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                     Row(
                       children: [
                         Text('Password', style: TextStyle(color: profileColor, fontSize: 18),),
                         Spacer(),
                         Icon(Icons.edit, color: Color(0xff1A6BB9),)
                       ],
                     ),
                     SizedBox(height: 10,),
                     Text('********', style: TextStyle(color: colorofHintText),),
                     SizedBox(height: 10,),
                     Container(
                       height: .5,
                       color: colorofHintText,
                     ),
                     SizedBox(height: 12,),
                   ],),
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                     Row(
                       children: [
                         Text('Language', style: TextStyle(color: profileColor, fontSize: 18),),
                         Spacer(),
                         Icon(Icons.edit, color: Color(0xff1A6BB9),)
                       ],
                     ),
                     SizedBox(height: 10,),
                     Text('English', style: TextStyle(color: colorofHintText),),
                     SizedBox(height: 10,),
                     Container(
                       height: .5,
                       color: colorofHintText,
                     ),

                   ],),

                     ],



                ),
              ),
              width: 335,
              height: 560,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white, boxShadow: [BoxShadow(color: Colors.black,spreadRadius: -5,blurRadius: 5,offset: Offset(0, 0),
              )]),
            ),
          ),
        ],
      ),
    );
  }
}


