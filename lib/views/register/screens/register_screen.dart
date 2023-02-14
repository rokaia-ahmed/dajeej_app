
import 'package:dajeej/core/utils/app_colors.dart';
import 'package:dajeej/core/utils/media_query_values.dart';
import 'package:dajeej/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import '../../../core/widgets/background_widget.dart';
import '../../../core/widgets/custom_text_form_field.dart';
import '../../../core/widgets/logo_widget.dart';
import '../widgets/custom_check_box.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
        const BackGroundWidget(),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: context.height*0.04),
                InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child:const CircleAvatar(
                    backgroundColor: Colors.white,
                    child:Icon(Icons.arrow_back_ios_rounded,
                    size:20 ,
                    color:AppColors.blue ,
                    ) ,
                  ),
                ),
                SizedBox(height: context.height*0.04),
               const LogoWidget(),
                SizedBox(height: context.height*0.04),
                CustomTextFormField(
                  text: 'Mobile*',
                  validator:(v){
                    return null;
                  },
                ),
                SizedBox(height: context.height*0.02),
                CustomTextFormField(
                  text: 'Email*',
                  validator:(v){
                    return null;
                  },
                ),
                SizedBox(height: context.height*0.02),
                CustomTextFormField(
                  text: 'Password*',
                  validator:(v){
                    return null;
                  },
                ),
                SizedBox(height: context.height*0.02),
                CustomTextFormField(
                  text: 'confirm Password*',
                  validator:(v){
                    return null;
                  },
                ),
                SizedBox(height: context.height*0.01),
                Row(
                  children: [
                   const CustomCheckBox(),
                    Text('I have agree for',
                      style: TextStyle(
                        color:Colors.grey.shade600 ,
                      ),
                    ),
                    const Text('Terms & Conditions',
                      style: TextStyle(
                        color: AppColors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: context.height*0.02),
                CustomButton(
                  text: 'Register',
                  onPressed: (){},
                  width:double.infinity ,
                  textColor:Colors.black ,
                  color:AppColors.primary,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
