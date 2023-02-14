import 'package:dajeej/core/utils/media_query_values.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.elevation,
    this.width,
    this.color,
    this.textColor,
  }) :super(key: key);

   final String text;
   final VoidCallback onPressed;
   final double? elevation;
   final double? width;
   final Color? color;
   final Color? textColor;
  @override
  Widget build(BuildContext context) {
    return  MaterialButton(
      onPressed: onPressed,
      elevation: elevation,
      height:context.height*0.065 ,
      minWidth:width ,
      textColor:textColor ,
      color:color ,
      shape:OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide:const BorderSide(
          color: Colors.transparent,
        ),
      ) ,
      child: Text(text,
        style: GoogleFonts.cairo(
          fontWeight: FontWeight.w400,
          fontSize: 16,
          //letterSpacing: 1.2,
        ),
      ),
    );
  }
}
