import 'package:elsweidy/components/constants.dart';
import 'package:flutter/material.dart';

Widget defaultFormField({
  String Hint,
  Color colorOfBorderSide,
  Color colorOfText,
  Color colorOfHint,
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
      //  margin: EdgeInsets.symmetric(horizontal: 5),
      color: backgroundcolor,
      height: 60,
      child: TextFormField(

        style: TextStyle(color: colorOfText,),
        enabled: isClickable,
        controller: controller,
        validator: validate,
        keyboardType: type,
        onFieldSubmitted: onSubmit,
        onChanged: onChange,
        obscureText: ispassword,
        onTap: onTap,
        decoration: InputDecoration(

          hintText: Hint,
          hintStyle: TextStyle(color: colorOfHint),
          labelText: label,
          prefixIcon: prefix,
           focusedBorder: OutlineInputBorder(
               borderSide: BorderSide(color: colorOfBorderSide),
               borderRadius: BorderRadius.circular(30),),

           enabledBorder: OutlineInputBorder(
               borderSide: BorderSide(color: colorOfBorderSide),
               borderRadius: BorderRadius.circular(30)),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: colorOfBorderSide),
              borderRadius: BorderRadius.circular(30)),

          suffixIcon: suffix != null
              ? IconButton(
                  onPressed: suffixpressed,
                  icon: Icon(suffix),
                )
              : null,
        ),
      ),
    );

Widget defaultButton({
  double width = 260,
  double height =60,
  Color backcolor = const Color(0xffE5660F),
  Color textcolor = Colors.white,

  bool isUppercase = true,
  double radius = 40.0,
//@required  Function() function,
  @required Widget childWidget,

   Function onpressed,

}) =>
    Container(
      width: width,
      //margin: EdgeInsets.symmetric(horizontal: 10),
      height: height,
      child: MaterialButton(
        onPressed: onpressed,
        // onPressed: function
        //,   // theres here a problem function haven't to be with ' () '
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child:childWidget
        ),
      ),
      decoration: BoxDecoration(

          borderRadius: BorderRadius.circular(radius),
          color: backcolor),
    );





TextStyle styleOfDefaultButton()=> TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20);