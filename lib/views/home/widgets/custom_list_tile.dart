import 'package:dajeej/core/utils/media_query_values.dart';
import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({Key? key,
  required this.text,
    required this.icon,
    this.onTap})
  : super(key: key);

   final String text;
   final IconData icon;
   final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: context.height*0.065,
      child: ListTile(
        onTap:onTap,
        iconColor: Colors.white,
        textColor: Colors.white,
        leading: Icon(
          icon,
          size: 27,
        ),
        title: Text(
          text,
          style:const TextStyle(
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
