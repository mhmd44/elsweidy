

import 'package:elsweidy/components/components.dart';
import 'package:elsweidy/components/constants.dart';
import 'package:elsweidy/screens/trackYourOrder.dart';
import 'package:flutter/material.dart';

import 'home.dart';
import 'search.dart';

class CheckOut extends StatefulWidget {
  const CheckOut({Key key}) : super(key: key);

  @override
  _CheckOutState createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0.0,
        title: Center(
            child: Text(
          'Checkout',
          style: TextStyle(color: Color(0xff110802), fontSize: 18),
        )),
        leading: Icon(Icons.arrow_back_ios),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            smallContainer(context),
            SizedBox(height: 10,),
            largeContainer(),
            itemsAndIconOfCheckout(),
            myCartItemModified(),
            SizedBox(height: 10,),
            myCartItemModified(),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Row(
                children: [
                  Column(
                    children: [
                      Text('Total price', style: TextStyle(color: colorGreyOfCheckout, fontSize: 18),),
                      Text('31.00 sr', style: TextStyle(color: colorGreyOfCheckout, fontSize: 18),)
                    ],
                  ),
                  Spacer(),
                  InkWell(
                      onTap:(){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>TrackYourOrder()));
                      }
                  ,child: defaultButton(childWidget: Text('Buy Now', style: styleOfDefaultButton(),), width: 215, height: 50))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

















Widget smallContainer(context) => Container(
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: -4,
              blurRadius: 5,
              offset: Offset(0, 0),
            )
          ]),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Shipping Details',
                  style: TextStyle(color: colorGreyOfCheckout, fontSize: 18),
                ),
                Spacer(),
                InkWell(
                  onTap: (){
                    showBottomSheet(

                        //isScrollControlled: true,
                        context: context,
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(25),
                              topLeft: Radius.circular(25)),
                        ),
                        builder: (context) {
                          var formkey;
                          return
                            Form(
                              key: formkey,
                              child: Container(
                                margin: EdgeInsets.all(10),
                                height: 380,
                                child: SingleChildScrollView(
                                  reverse: true,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding:
                                        EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom, top: 10, ),
                                        child: childContainer(backgroundcolor: Color(0xffF4F4F4), label: 'Country / Region', heightOfContainer: 50),
                                      ),
                                      Padding(
                                        padding:
                                        EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom, top: 10, ),
                                        child: childContainer(backgroundcolor: Color(0xffF4F4F4), label: 'Street Adress', heightOfContainer: 50),
                                      ),
                                      Padding(
                                        padding:
                                        EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom, top: 10, ),
                                        child: childContainer(backgroundcolor: Color(0xffF4F4F4), label: 'City', heightOfContainer: 50),
                                      ),
                                      Padding(
                                        padding:
                                        EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom, top: 10, ),
                                        child: childContainer(backgroundcolor: Color(0xffF4F4F4), label: 'State', heightOfContainer: 50),
                                      ),
                                      SizedBox(height: 30,),
                                      defaultButton(childWidget: Text('ok',style: styleOfDefaultButton(), ),width: 200, height: 50
                                      ),
                                      SizedBox(height: 20,),
                                    ],
                                  ),
                                ),
                              ),
                            );
                        });
                  }
                  ,child: Icon(
                    Icons.edit,
                    color: colorBlueOfBuildScrolItem,
                  ),
                )
              ],
            ),
            Text(
              'Egypt, eldaqahlia, Mansoura, ….',
              style: TextStyle(color: colorGreyOfCheckout, fontSize: 16),
            )
          ],
        ),
      ),
    );

Widget largeContainer() =>
    Container(
      width: double.infinity,
      height: 250,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: -4,
              blurRadius: 5,
              offset: Offset(0, 0),
            )
          ]),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Informations',
              style: TextStyle(color: colorGreyOfCheckout, fontSize: 18),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: childContainer(backgroundcolor: Color(0xffF4F4F4), label: 'Your Name', heightOfContainer: 50),
            ),
            childContainer(backgroundcolor: Color(0xffF4F4F4), label: 'Your Email', heightOfContainer: 50),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: childContainer(backgroundcolor: Color(0xffF4F4F4), label: 'You Phone Number', heightOfContainer: 50),
            ),
          ],
        ),
      ),
    );

Widget childContainer({
  double heightOfContainer,
  Color color,
  Color backgroundcolor,
  TextEditingController controller,
  Function validate, //resolved
  TextInputType type,
  Function onSubmit,
  Function onTap,
  Function onChange,
  String label,
  Widget prefix,
  bool ispassword = false,
  bool isClickable = true,
  IconData suffix,
  Function() suffixpressed,
}) =>
    Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: backgroundcolor,),
       height: heightOfContainer,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: TextFormField(

            style: TextStyle(color: Colors.black),
            enabled: isClickable,
            validator: validate,
            controller: controller,
            keyboardType: type,
            onFieldSubmitted: onSubmit,
            onChanged: onChange,
            obscureText: ispassword,
            onTap: onTap,
            decoration: InputDecoration(

              border: InputBorder.none,
              hintStyle: TextStyle(color: colorofHintText),
              labelText: label,
              prefixIcon: prefix,
              suffixIcon: suffix != null
                  ? IconButton(
                      onPressed: suffixpressed,
                      icon: Icon(suffix),
                    )
                  : null,
             // border:  OutlineInputBorder(),
            ),
          ),
        ),
      ),
    );












Widget myCartItemModified()=> Container(
  width: double.infinity,
  height: 80,
  decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(5),
      boxShadow: [
        BoxShadow(
          color: Colors.grey,
          spreadRadius: -4,
          blurRadius: 5,
          offset: Offset(0, 0),
        )
      ]),
  child: Padding(
    padding: const EdgeInsets.all(5.0),
    child:
    Row(
      children: [
        Image.asset('assets/images/electricWire.png'),
        SizedBox(width: 10,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Medium hose', style: styleOfNames(),),
            smallStars(),
            Text('500 sr',style: styleOfNames(),),
          ],
        ),
        Spacer(),

      ],
    ),
  ),
);







Widget itemsAndIconOfCheckout()=> Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child:
      Row(
        children: [
          Text(
            'Items',
            style: TextStyle(color: Color(0xff1A6BB9), fontSize: 16),
          ),
          SizedBox(
            width: 10,
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                    color: Color(0xff1A6BB9),
                    borderRadius: BorderRadius.circular(10)),
              ),
              Text('2', style: TextStyle(color: Colors.white),),
            ],

          ),
        ],
      ),
    );