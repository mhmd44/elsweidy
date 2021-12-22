import 'package:flutter/material.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({Key key}) : super(key: key);

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
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text('Lorem ipsum dolor sit dolor amet, consectetur adipis cinkk jbjh bhjv tempor incididunt ugfgt labore et dolore magna aliqua. Ut enim lad minimkjhl veniam, quis nostrudur exercitation ullamco laboris nisi u'),
          ],
        ),
      ),
    );
  }
}
