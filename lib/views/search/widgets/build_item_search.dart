import 'package:dajeej/core/utils/app_colors.dart';
import 'package:dajeej/core/utils/media_query_values.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BuildItemSearch extends StatelessWidget {
  const BuildItemSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.separated(
         physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context,index)=>buildItem(context),
          separatorBuilder: (context,index)=>SizedBox(
              height: context.height*0.02),
          itemCount: 5,
      ),
    );
  }
  Widget buildItem(BuildContext context){
    return Row(
      children: [
        Image.network('https://th.bing.com/th/id/OIP.4fMbt3QcCffFTLNkI0km-gAAAA?pid=ImgDet&rs=1',
          height:context.height*0.08,
          width:context.width*0.13 ,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Apple iPhone 14 Pro 5G 128GB - Gold',
              maxLines: 1,
              style:TextStyle(
                fontSize: 13,
                overflow: TextOverflow.ellipsis,
              ) ,
            ),
            SizedBox(
              height: context.height*0.01,
            ),
            const Text('370.900 KD',
              style:TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: AppColors.blue,
              ) ,
            ),
          ],
        ),
      ],
    );
  }

}
