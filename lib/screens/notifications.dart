import 'package:elsweidy/components/constants.dart';
import 'package:flutter/material.dart';

class NotificationSweedy extends StatefulWidget {


  @override
  _NotificationSweedyState createState() => _NotificationSweedyState();
}

class _NotificationSweedyState extends State<NotificationSweedy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Notification', style: TextStyle(color: Color(0xff110802), fontSize: 18),)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                children: [
                  Text('New', style: TextStyle(color: Color(0xff1A6BB9), fontSize: 16),),
                  SizedBox(width: 10,),
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(color: Color(0xff1A6BB9), borderRadius: BorderRadius.circular(10)),
                  ),
                ],
                ),
              ),
              notificationItem(),
              notificationItem(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  children: [
                    Text('Earlier', style: TextStyle(color: Color(0xff1A6BB9), fontSize: 16),),
                    SizedBox(width: 10,),
                    Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(color: Color(0xff1A6BB9), borderRadius: BorderRadius.circular(10)),
                    ),
                  ],
                ),
              ),
              ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true, // push it outside with singleChildScrollview
                  itemBuilder: (context, index) => notificationItem(),
                  separatorBuilder: (context, index) => SizedBox(height: 10),
                  itemCount: 10),
            ],
          ),
        ),
      ),
    );
  }
}






Widget notificationItem()=> Container(
  width: double.infinity,
  height: 64,
  decoration: BoxDecoration( color: Colors.white ,borderRadius: BorderRadius.circular(5),boxShadow: [BoxShadow(
    color: Colors.grey,spreadRadius: -5,blurRadius: 5,offset: Offset(0, 0),
  )]),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Container(
          width: 42,
          height: 42,
          child: Image.asset('assets/images/Logo.png')),
      SizedBox(width: 10,),
      Text('''Lorem ipsum do amet!consetur 
      adipicig eliuet sked do
      ''', style: TextStyle(color: colorofHintText, fontSize: 14),textAlign: TextAlign.start,),
      Spacer(),
      Text('9 : 41', ),
      SizedBox(height: 10,),

    ],
  ),
);