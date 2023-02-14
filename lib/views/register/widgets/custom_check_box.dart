import 'package:flutter/material.dart';

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({Key? key}) : super(key: key);

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool isChecked =false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
       // splashRadius: 0.0,
        value: isChecked,
        hoverColor: Colors.white,
        side:const BorderSide(
          color: Colors.black,
          width: 0.7,
        ),
        onChanged: (value){
          setState(() {
            isChecked = value!;
          });
        }
    );
  }
}
