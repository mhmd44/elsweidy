import 'package:elsweidy/components/components.dart';
import 'package:elsweidy/components/constants.dart';
import 'package:flutter/material.dart';

import 'forget_password.dart';
import 'home.dart';
import 'sign_up.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  var emailControl = TextEditingController();
  var phoneNumber = TextEditingController();
  var passControl = TextEditingController();
  bool isPasswordshow= true;

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
              defaultFormField( Hint: 'User Name ',colorOfBorderSide: Color(0xffE5660F)),
              SizedBox(height: 20,),
              defaultFormField( Hint: 'Password ', suffix: Icons.remove_red_eye, colorOfBorderSide: Color(0xffE5660F)),
              SizedBox(height: 10,),
              InkWell(
                  onTap:(){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgetPassword()));
                  }
                  ,child: Text('Forget Password ?', style: TextStyle(fontSize: 18, color: Color(0xff828282)),)),
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                }
                  ,child: Center(child: defaultButton(childWidget: Text('Sign In',style: styleOfDefaultButton(),), onpressed: (){}))),
              SizedBox(height: 20,),
              Row(
                children: [
                  Text('Don\'t have an account?', style: TextStyle(color: colorofHintText, fontSize: 18),),
                  Spacer(),
                  InkWell(
                      onTap:(){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));
                      }
                      ,child: Text('Sign Up', style: TextStyle(color: Color(0xffE5660F), fontSize: 18),))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
