import 'package:dajeej/core/utils/media_query_values.dart';
import 'package:flutter/material.dart';
import '../../../core/utils/app_colors.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  BottomSheet(
      backgroundColor: AppColors.blue,
      onClosing: () {},
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: (){},
                child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 2,
                        color: Colors.white,
                      ),
                    ),
                    child: const Icon(
                      Icons.add,
                      size: 17,
                      color: Colors.white,
                    )),
              ),
              const Text('1',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              InkWell(
                onTap: (){},
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 2,
                      color: Colors.white,
                    ),
                  ),
                  child:const Padding(
                    padding:  EdgeInsets.only(bottom: 12),
                    child:  Icon(
                      Icons.minimize_outlined,
                      size: 17,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const Text('390.900 KD',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              MaterialButton(
                onPressed: () {},
                height: context.height * 0.06,
                minWidth: context.width * 0.2,
                color: AppColors.primary,
                shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                  ),
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.shopping_cart_outlined,
                      color: AppColors.blue,
                      size: 22,
                    ),
                    SizedBox(width: context.width * 0.02),
                    const Text(
                      'Add to Cart',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        letterSpacing: 1.2,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
