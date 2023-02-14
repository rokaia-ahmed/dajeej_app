import 'package:dajeej/core/utils/media_query_values.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../core/utils/app_colors.dart';
import '../../../core/utils/assets_manger.dart';

class SplashBody extends StatelessWidget {
 const  SplashBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            height:context.height ,
            width: context.width,
            AppAssets.background,
             fit: BoxFit.fill,
            //opacity:const  AlwaysStoppedAnimation(0.8),
          ),
          Container(
            width:context.width ,
            height:context.height ,
            decoration:BoxDecoration(
              color: AppColors.primary.withOpacity(0.8),
            ) ,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             const Spacer(
                flex: 4,
              ),
              Center(
                child: Image.asset(
                  AppAssets.logo,
                  height:context.height*0.5 ,
                  width: context.width*0.5,
                ),
              ),
             const Spacer(
                flex: 3,
              ),
              Text('Dajeej App',
               style:GoogleFonts.cairo(
                 letterSpacing: 2,
                 fontWeight: FontWeight.w500,
                 fontSize: 20,
               ) ,
              ),
            const Spacer(
                flex: 1,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
