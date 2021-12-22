import 'package:elsweidy/components/components.dart';
import 'package:elsweidy/components/constants.dart';
import 'package:elsweidy/screens/sign_in.dart';
import 'package:flutter/material.dart';

import 'exclusiveDeals.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 80,),
              Center(child: Image.asset('assets/images/Logo.png')),
              SizedBox(height: 30,),
              defaultFormField( Hint: 'User Name ',colorOfBorderSide: primarycolor),
              SizedBox(height: 20,),
              defaultFormField( Hint: 'Email',colorOfBorderSide: primarycolor),
              SizedBox(height: 20,),
              defaultFormField( Hint: 'Phone',colorOfBorderSide: primarycolor),
              SizedBox(height: 20,),
              defaultFormField( Hint: 'Password ', suffix: Icons.remove_red_eye, colorOfBorderSide: primarycolor),
              SizedBox(height: 10,),
              SizedBox(height: 20,),
              Row(
                children: [
                  Container(
                    height: .4,
                    width: 150,
                    color: Color(0xff828282),
                  ),

                  Text('OR'),

                  Container(
                    height: .4,
                    width: 150,
                    color: Color(0xff828282),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.facebook),

                  Icon(Icons.facebook),
                  Icon(Icons.facebook),
                ],
              ),
              SizedBox(height: 30,),
              InkWell(
                  onTap:(){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ExclusiveDeals()));
                  }
              ,child: Center(child: defaultButton(childWidget: Text('Sign Up'), onpressed: (){}))),
              SizedBox(height: 20,),
              Row(
                children: [
                  Text('Already have an account ?', style: TextStyle(color: colorofHintText, fontSize: 18),),
                  Spacer(),
                  InkWell(
                      onTap:(){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SignIn()));
                      }
                      ,child: Text('Sign In', style: TextStyle(color: Color(0xffE5660F), fontSize: 18),))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
