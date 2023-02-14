import 'package:dajeej/core/utils/navigator.dart';
import 'package:dajeej/views/search/screens/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_strings.dart';
import '../../Cart/screens/cart_screen.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      title: Text(
        AppStrings.nameOfApp,
        style:GoogleFonts.cairo(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.w400,
        ),
      ) ,
      centerTitle: true,
      iconTheme:const IconThemeData(color: AppColors.blue,
        size: 30,
      ) ,
      actions: [
        Row(
          children: [
            InkWell(
              onTap:(){
                AppNavigator.push(
                    context: context,
                    screen: const SearchScreen(),
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
                  children: const [
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
    );
  }
}
