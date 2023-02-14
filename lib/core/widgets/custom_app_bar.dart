
import 'package:dajeej/core/utils/navigator.dart';
import 'package:dajeej/views/Cart/screens/cart_screen.dart';
import 'package:dajeej/views/search/screens/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/app_colors.dart';

class CustomAppBar extends StatelessWidget {
   const CustomAppBar({Key? key,required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return  AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      title: Text(
        text ,
        style:GoogleFonts.cairo(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.w400,
        ),
      ) ,
      centerTitle: true,
      leading:InkWell(
        onTap: (){
          Navigator.pop(context);
        },
        child: const Icon(Icons.arrow_back_ios_rounded,
          color: AppColors.blue,
          size: 25,
        ),
      ) ,
      actions: [
        Row(
          children: [
            InkWell(
              onTap:(){
                AppNavigator.push(
                    context: context, screen:const SearchScreen(),
                );
              } ,
              child: const Icon(Icons.search,
                color: AppColors.blue,
                size: 30,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15 ),
              child: InkWell(
                onTap:(){
                  AppNavigator.push(
                      context: context,
                      screen: const CartScreen(),
                  );
                },
                child: Stack(
                  alignment: Alignment.topRight,
                  children:const [
                     Icon(Icons.shopping_cart_outlined,
                      color: AppColors.blue,
                      size: 30,
                    ),
                     CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 8,
                      child: Text('0',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ) ,
          ],
        ) ,
      ],
      bottom:  PreferredSize(
          preferredSize:const Size.fromHeight(1),
          child:  Container(
            height: 1,
            width: double.infinity,
            color: Colors.grey[300],
          ),
      ),
    );
  }
}
