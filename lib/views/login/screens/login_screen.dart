
import 'package:dajeej/core/utils/app_colors.dart';
import 'package:dajeej/core/utils/media_query_values.dart';
import 'package:dajeej/core/utils/navigator.dart';
import 'package:dajeej/core/widgets/custom_button.dart';
import 'package:dajeej/views/login/screens/forgot_password_screen.dart';
import 'package:dajeej/views/register/screens/register_screen.dart';
import 'package:flutter/material.dart';
import '../../../core/widgets/background_widget.dart';
import '../../../core/widgets/custom_text_form_field.dart';
import '../../../core/widgets/logo_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
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
                  text: 'Email/Mobile',
                  validator:(v){
                    return null;
                  },
                ),
                SizedBox(height: context.height*0.04),
                CustomTextFormField(
                  text: 'Password',
                  validator:(v){
                    return null;
                  },
                ),
                SizedBox(height: context.height*0.01),
                Align(
                  alignment: Alignment.topRight,
                  child: TextButton(
                    onPressed: (){
                      AppNavigator.push(
                          context: context,
                          screen:const ForgotPasswordScreen());
                    },
                      child:const Text('Forgot Password?',
                     // textAlign: TextAlign.end,
                      ),
                  ),
                ),
                SizedBox(height: context.height*0.01),
                CustomButton(
                    text: 'Login',
                    onPressed: (){},
                     width:double.infinity ,
                     textColor:Colors.white ,
                     color:AppColors.blue,
                ),
                SizedBox(height: context.height*0.02),
                CustomButton(
                  text: 'Register',
                  onPressed: (){
                    AppNavigator.push(
                        context: context,
                        screen:const RegisterScreen());
                  },
                  width:double.infinity ,
                  textColor:Colors.black ,
                  color:AppColors.primary,
                ),
                SizedBox(height: context.height*0.04),
                TextButton(
                  onPressed: (){},
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       Text('Continue as a ',
                         style: TextStyle(
                           color:Colors.grey.shade600 ,
                         ),
                      ),
                     const Text('Guest',
                        style: TextStyle(
                          color: AppColors.blue,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
