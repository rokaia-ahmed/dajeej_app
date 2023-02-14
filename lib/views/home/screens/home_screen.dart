
import 'package:dajeej/core/utils/media_query_values.dart';
import 'package:dajeej/core/utils/navigator.dart';
import 'package:dajeej/views/View_all/screens/view_all_hand_free.dart';
import 'package:dajeej/views/View_all/screens/view_all_mobiles.dart';
import 'package:dajeej/views/home/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';
import '../../../core/utils/assets_manger.dart';
import '../../View_all/screens/view_all_latest_products.dart';
import '../widgets/carousel_slider.dart';
import '../widgets/category.dart';
import '../widgets/hand_free_product.dart';
import '../widgets/latest_products.dart';
import '../widgets/mobiles_products.dart';
import 'home_app_bar.dart';


class HomeScreen extends StatelessWidget {
   HomeScreen({Key? key}) : super(key: key);
  final List<String> images=[
      AppAssets.shopping1,
      AppAssets.shopping2,
      AppAssets.shopping3,
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:Size.fromHeight(context.height*0.08) ,
          child:const HomeAppBar()),
      drawer:const CustomDrawer(),
      body:SingleChildScrollView(
        child: Padding(
          padding:const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children:  [
              CustomCarouselSlider(images: images),
              SizedBox(
                height: context.height*0.02,
              ),
              const Category(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Latest Products'),
                  TextButton(
                    onPressed: (){
                      AppNavigator.push(
                          context: context,
                          screen: const ViewAllLatestProducts(),);
                    },
                    child: const Text('View All'),
                  ),
                ],
              ),
              const LatestProducts(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Mobiles'),
                  TextButton(
                    onPressed: (){
                      AppNavigator.push(
                        context: context,
                        screen:  ViewAllMobiles(),);
                    },
                    child: const Text('View All'),
                  ),
                ],
              ),
              const MobilesProducts(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Hand Free'),
                  TextButton(
                    onPressed: (){
                      AppNavigator.push(
                          context: context,
                          screen: ViewAllHandFree());
                    },
                    child: const Text('View All'),
                  ),
                ],
              ),
              const HandFreeProduct(),
            ],
          ),
        ),
      ) ,
    );
  }
}
