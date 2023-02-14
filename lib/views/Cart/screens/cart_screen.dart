
import 'package:dajeej/core/utils/media_query_values.dart';
import 'package:dajeej/core/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import '../widgets/build_bottom_sheet.dart';
import '../widgets/build_item_cart.dart';
import '../widgets/divider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
         preferredSize:Size.fromHeight(context.height*0.08) ,
          child: const CustomAppBar(text: 'Shopping Cart'),
      ) ,
      body: Column(
        children: const [
          BuildItemCart(),
           CustomDivider(),
        ],
      ),
      bottomSheet:const BuildBottomSheet() ,
    );
  }
}
