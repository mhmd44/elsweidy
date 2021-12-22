import 'package:elsweidy/screens/allCategories.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class Hose extends StatefulWidget {
  const Hose({Key key}) : super(key: key);

  @override
  _HoseState createState() => _HoseState();
}

class _HoseState extends State<Hose> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Center(child: Text('Hose 1', style: TextStyle(color: Color(0xff110802), fontSize: 18),)),
        leading: InkWell(
            onTap:(){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>AllCategories()));
            }
        ,child: Icon(Icons.arrow_back_ios)),
      ),
      body: Column(
        children: [
          GridView.builder(
            gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemCount: 8,
            shrinkWrap: true,
           // physics: NeverScrollableScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return gridItem();
            },
          ),
        ],
      ),
    );
  }
}
