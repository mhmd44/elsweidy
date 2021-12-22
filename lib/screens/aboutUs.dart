import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Center(
            child: Text(
              'Privacy policy',
              style: TextStyle(color: Color(0xff110802), fontSize: 18),
            )),
        leading: Icon(Icons.arrow_back_ios),
      ),
      body: Padding(
        padding: const EdgeInsets.all( 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Lorem ipsum dolor sit dolor amet, consectetur adipis cinkk jbjh bhjv tempor incididunt ugfgt labore et dolore magna aliqua. Ut enim lad minimkjhl veniam, quis nostrudur exercitation ullamco laboris nisi u'),
            SizedBox(height: 20,),
            Container(

              width: 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Icon(FontAwesomeIcons.facebook),
                  Icon(FontAwesomeIcons.facebook),
                  Icon(FontAwesomeIcons.facebook),
                  Icon(FontAwesomeIcons.facebook)
                ],
              ),
            ),
            SizedBox(height: 20,),
            Text('©Chaker 2020 - All rights reserved'),

          ],
        ),
      ),
    );
  }
}
