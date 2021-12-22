import 'package:elsweidy/components/components.dart';
import 'package:elsweidy/components/constants.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'sign_in.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key key}) : super(key: key);

  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap:(){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SignIn()));
            }
        ,child: Icon(Icons.arrow_back_ios,)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            SizedBox(height: 80,),
            Center(child: Image.asset('assets/images/Logo.png')),
            SizedBox(height: 20,),
            Text('Forget your password ?', style: TextStyle(color: Color(0xff110802), fontSize: 18, fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),
            Text('Please enter the verification code sent to +0243659871', style: TextStyle(color: colorofHintText, fontSize: 18),),
            SizedBox(height: 30,),
            _buildPinCodeFields(context),
            SizedBox(height: 100,),
            InkWell(
                onTap:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SignIn()));
                },child: Center(child: defaultButton(childWidget: Text('Send',style: styleOfDefaultButton(),), onpressed: (){}))),
            SizedBox(height: 20,),
            Row(
              children: [
                Text('Do you have a problem?', style: TextStyle(color: colorofHintText, fontSize: 18),),
                Spacer(),
                Text('Resend', style: TextStyle(color: Color(0xffE5660F), fontSize: 18),)
              ],
            ),
          ],
        ),
      ),
    );
  }
}


Widget _buildPinCodeFields(BuildContext context) {
  return Container(
    child: PinCodeTextField(
      appContext: context,
      autoFocus: true,
      cursorColor: Colors.black,
      keyboardType: TextInputType.number,
      length: 6,
      obscureText: false,
      animationType: AnimationType.scale,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(5),
        fieldHeight: 50,
        fieldWidth: 40,
        borderWidth: 1,
        activeColor: primarycolor,
        inactiveColor:primarycolor,
        inactiveFillColor: Colors.white,
        activeFillColor: primarycolor,
        selectedColor: Colors.black,
        selectedFillColor: Colors.white,
      ),
      animationDuration: Duration(milliseconds: 300),
      backgroundColor: Colors.white,
      enableActiveFill: true,
      onCompleted: (submitedCode) {
        //otpCode = submitedCode;
        print("Completed");
      },
      onChanged: (value) {
        print(value);
      },
    ),
  );
}