
import 'package:dajeej/core/utils/app_colors.dart';
import 'package:dajeej/core/utils/media_query_values.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({Key? key,this.validator,required this.text}) : super(key: key);
   final String? Function(String? value)? validator;
   final String? text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:context.height*0.07,
      child: TextFormField(
        validator:validator ,
        decoration:InputDecoration(
          hintText:text ,
          hintStyle:const TextStyle(
            color: Colors.grey,
          ),
          contentPadding:const EdgeInsets.all(15),
          /* enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)
                    ),*/
          focusedBorder:OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide:const BorderSide(
              color:AppColors.blue,
            ),
          ) ,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: Colors.grey[400]!),
          ),
        ) ,
      ),
    );
  }
}
