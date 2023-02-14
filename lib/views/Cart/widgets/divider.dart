import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 1,
      width: double.infinity,
      color: Colors.grey[300],
    );
  }
}
