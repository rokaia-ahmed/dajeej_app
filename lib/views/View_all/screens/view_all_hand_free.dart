import 'package:dajeej/core/utils/media_query_values.dart';
import 'package:dajeej/core/utils/navigator.dart';
import 'package:dajeej/core/widgets/custom_app_bar.dart';
import 'package:dajeej/views/details_screen/Screes/details_screen.dart';
import 'package:flutter/material.dart';
import '../../../core/utils/app_colors.dart';
import '../widgets/custom_choice_select.dart';


class ViewAllHandFree extends StatelessWidget {
 const ViewAllHandFree({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: PreferredSize(
       preferredSize:Size.fromHeight(context.height*0.08) ,
       child:const CustomAppBar(text: 'Hand free')),
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
             const CustomChoiceChip(),
              GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio:1/1.5 ,
                shrinkWrap: true,
                physics:const BouncingScrollPhysics(),
                children:List.generate(6,
                        (index) => buildItem(context)),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget buildItem(BuildContext context){
    return InkWell(
      onTap:(){
        AppNavigator.push(
            context: context,
            screen:  DetailsScreen());
      } ,
      child: Container(
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
                  Image.network('https://th.bing.com/th/id/OIP.4fMbt3QcCffFTLNkI0km-gAAAA?pid=ImgDet&rs=1',
                    width:context.width*0.5,
                    height: context.height*0.2,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding:  const EdgeInsets.all(7.0),
                    child: InkWell(
                      onTap: (){},
                      child: Icon(Icons.favorite,
                        color: Colors.grey[400],
                        size: 30,
                      ),
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
      ),
    );
  }
}
