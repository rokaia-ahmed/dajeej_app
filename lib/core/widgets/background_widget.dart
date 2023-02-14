import 'package:dajeej/core/utils/media_query_values.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/assets_manger.dart';

class BackGroundWidget extends StatelessWidget {
  const BackGroundWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Image.asset(AppAssets.background,
      height:context.height ,
      width:context.width ,
      fit: BoxFit.fill,
      opacity:const AlwaysStoppedAnimation(0.14) ,
    ) ;
  }
}
