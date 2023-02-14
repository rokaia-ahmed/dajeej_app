import 'package:dajeej/core/utils/media_query_values.dart';
import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:context.height*0.13,
      child: ListView.separated(
          scrollDirection:Axis.horizontal ,
          itemBuilder: (context,index)=>buildItem( context),
          separatorBuilder: (context,index)=>SizedBox(width: context.width*0.075,),
          itemCount: 15),
    );
  }
  Widget buildItem(BuildContext context,){
    return SizedBox(
      width:context.width*0.17,
      child: Column(
        children:  [
          const CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage('https://th.bing.com/th/id/R.bdb1dfb2b2b621f584d594fd34cc393e?rik=6JWMMmbfzClN9g&pid=ImgRaw&r=0'),
          ),
          SizedBox(height:context.height*0.004,),
          const Text('mobiles',
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
        ],
      ),
    );
  }
}
