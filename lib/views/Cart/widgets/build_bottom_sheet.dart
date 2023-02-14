import 'package:dajeej/core/utils/media_query_values.dart';
import 'package:dajeej/core/utils/navigator.dart';
import 'package:dajeej/views/Cart/widgets/divider.dart';
import 'package:dajeej/views/home/screens/home_screen.dart';
import 'package:flutter/material.dart';
import '../../../core/utils/app_colors.dart';
import '../../../core/widgets/custom_button.dart';

class BuildBottomSheet extends StatelessWidget {
  const BuildBottomSheet({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  BottomSheet(
      elevation: 2,
      onClosing:(){} ,
      builder:(context){
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const CustomDivider(),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  const Spacer(),
                  const Text('Total',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400
                    ),
                  ),
                  SizedBox(width: context.width*0.06),
                  const Text('360.900 KD',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            const CustomDivider(),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Expanded(
                    child: CustomButton(
                      text: 'Continue Shopping',
                      onPressed: (){
                        AppNavigator.push(
                            context: context,
                            screen: HomeScreen(),
                        );
                      },
                      color: AppColors.primary,
                    ),
                  ),
                  SizedBox(
                    width: context.width*0.03,
                  ),
                  Expanded(
                    child: CustomButton(
                      text: 'Checkout',
                      onPressed: (){},
                      color: AppColors.blue,
                      textColor: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      } ,
    );
  }
}
