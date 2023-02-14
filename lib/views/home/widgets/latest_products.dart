import 'package:dajeej/core/utils/app_colors.dart';
import 'package:dajeej/core/utils/media_query_values.dart';
import 'package:flutter/material.dart';
import '../../../core/utils/navigator.dart';
import '../../details_screen/Screes/details_screen.dart';

class LatestProducts extends StatelessWidget {
  const LatestProducts({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height*0.4,
      child: ListView.separated(
         scrollDirection: Axis.horizontal,
          itemBuilder: (context,index)=>buildItem(context),
          separatorBuilder:(context,index)=>SizedBox(
            width: context.width*0.03,) ,
          itemCount: 15),
    );
  }
  Widget buildItem(BuildContext context){
    return Container(
      width:context.width*0.5 ,
      decoration: BoxDecoration(
          border:Border.all(color: Colors.grey[300]!,
          width: 2,
          )
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Stack(
             alignment:Alignment.topLeft ,
             children: [
               InkWell(
                 onTap:(){
                   AppNavigator.push(
                       context: context,
                       screen:  DetailsScreen());
                 } ,
                 child: Image.network('https://th.bing.com/th/id/OIP.4fMbt3QcCffFTLNkI0km-gAAAA?pid=ImgDet&rs=1',
                 width:context.width*0.5,
                   height: context.height*0.2,
                   fit: BoxFit.cover,
                 ),
               ),
               Padding(
                 padding:  const EdgeInsets.all(7.0),
                 child: Icon(Icons.favorite,
                 color: Colors.grey[400],
                   size: 30,
                 ),
               ),
             ],

           ),
             SizedBox(height: context.height*0.01),
            const Text('dioopp[iyygdstrut',
            maxLines: 1,
              style: TextStyle(
                color: Colors.black45,
              ),
              overflow: TextOverflow.ellipsis,
            ),
             SizedBox(height:context.height*0.003),
            const Text('dioopp',
              maxLines: 2,
              style: TextStyle(
                fontSize: 16,
              ),
              overflow: TextOverflow.ellipsis,
            ),
             SizedBox(height:context.height*0.001),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:const [
                 Text('220 KD',
                style: TextStyle(
                  color: AppColors.blue,
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                ),
                ),
                 CircleAvatar(
                  radius: 18,
                  backgroundColor: AppColors.primary,
                  child: Icon(Icons.shopping_cart_outlined,
                  color:AppColors.blue ,
                    size: 20,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
