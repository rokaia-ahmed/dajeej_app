
import 'package:dajeej/core/utils/app_colors.dart';
import 'package:dajeej/core/utils/assets_manger.dart';
import 'package:dajeej/core/utils/media_query_values.dart';
import 'package:dajeej/core/utils/navigator.dart';
import 'package:dajeej/views/home/screens/home_screen.dart';
import 'package:dajeej/views/initial/widgets/drop_down_button.dart';
import 'package:flutter/material.dart';
import '../../../core/widgets/background_widget.dart';
import '../../../core/widgets/custom_button.dart';
import '../../../core/widgets/logo_widget.dart';

class InitScreen extends StatelessWidget {
 const  InitScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: [
         const  BackGroundWidget(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                SizedBox(
                  height:context.height*0.07 ,
                ),
               const LogoWidget(),
                SizedBox(
                  height:context.height*0.02 ,
                ),
                Image.asset(AppAssets.image1,
                  height:context.height*0.55 ,
                  width: double.infinity,
                   fit:BoxFit.fill ,
                ),
                SizedBox(
                  height:context.height*0.02 ,
                ),
                DropDownMenu(),
                SizedBox(
                  height:context.height*0.02 ,
                ),
                Row(
                  children: [
                    Expanded(
                      child: CustomButton(
                        text: 'ENGLISH',
                       onPressed: (){
                          AppNavigator.push(
                              context: context,
                              screen:  HomeScreen(),
                          );
                       },
                        elevation: 10,
                        color: AppColors.primary,
                      ),
                    ),
                    SizedBox(
                      width:context.width*0.04 ,
                    ),
                    Expanded(
                      child: CustomButton(
                        text: 'العربيه',
                        onPressed: (){
                          AppNavigator.push(
                            context: context,
                            screen: HomeScreen(),
                          );
                        },
                        elevation: 10,
                        color: AppColors.blue,
                        textColor: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ) ,
    );
  }
}
