import 'package:dajeej/core/utils/media_query_values.dart';
import 'package:flutter/material.dart';

import '../utils/assets_manger.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Image.asset(
        AppAssets.logo,
        width:context.width*0.23 ,
        height:context.height*0.12 ,
        fit: BoxFit.fill,
      ),
    );
  }
}
