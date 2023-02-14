import 'package:dajeej/core/utils/media_query_values.dart';
import 'package:dajeej/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import '../../../core/utils/app_colors.dart';
import '../../../core/widgets/background_widget.dart';
import '../../../core/widgets/custom_button.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [
          const BackGroundWidget(),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: context.height*0.04),
                InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child:const Align(
                    alignment: Alignment.topLeft,
                    child:  CircleAvatar(
                      backgroundColor: Colors.white,
                      child:Icon(Icons.arrow_back_ios_rounded,
                        size:20 ,
                        color:AppColors.blue ,
                      ) ,
                    ),
                  ),
                ),
               const Spacer(
                  flex: 1,
                ),
                Text('Forget Password?',
                  style: TextStyle(
                    color:Colors.grey.shade600 ,
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: context.height*0.01),
                Text('please enter email you use to sign in',
                  style: TextStyle(
                      color:Colors.grey.shade600,
                    fontSize: 13,
                  ),
                ),
                SizedBox(height: context.height*0.02),
               const CustomTextFormField(
                    text: 'Email*'
                ),
                SizedBox(height: context.height*0.04),
                CustomButton(
                  text: 'Request Password Reset',
                  onPressed: (){},
                  width:double.infinity ,
                  textColor:Colors.white ,
                  color:AppColors.blue,
                ),
               const Spacer(
                  flex: 2,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
