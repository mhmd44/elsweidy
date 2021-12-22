import 'package:elsweidy/components/components.dart';
import 'package:elsweidy/components/constants.dart';
import 'package:flutter/material.dart';

import 'checkOut.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({Key key}) : super(key: key);

  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0.0,
        title: Center(
            child: Text(
              'Contact us',
              style: TextStyle(color: Color(0xff110802), fontSize: 18),
            )),
        leading: Icon(Icons.arrow_back_ios),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: childContainer(backgroundcolor: Color(0xffF4F4F4), label: 'Full Name', heightOfContainer: 50),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: childContainer(backgroundcolor: Color(0xffF4F4F4), label: 'Email', heightOfContainer: 50),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: childContainer(backgroundcolor: Color(0xffF4F4F4), label: 'Message', heightOfContainer: 300),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: defaultButton(childWidget: Text('Send',style: styleOfDefaultButton(), ),width: 200, height: 50),
            ),
            SizedBox(height: 20,),
            Container(
              width: 150,
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Icon(Icons.mail_outline, color: colorBlueOfBuildScrolItem,),
                  Icon(Icons.video_call, color: colorBlueOfBuildScrolItem,),
                  Icon(Icons.phone, color: colorBlueOfBuildScrolItem,),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
