import 'package:dajeej/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomChoiceChip extends StatefulWidget {
  const CustomChoiceChip({Key? key}) : super(key: key);

  @override
  State<CustomChoiceChip> createState() => _CustomChoiceChip();
}

class _CustomChoiceChip extends State<CustomChoiceChip> {
  List<String> options=['All','Iphone','Android','Bedrooms','offices'];
  int _value =0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
          itemCount: options.length,
              separatorBuilder: (context,index)=>
               const SizedBox(width: 10),
              itemBuilder: (context,index){
                return ChoiceChip(
                    label: Text(options[index]),
                    labelPadding:const EdgeInsets.symmetric(horizontal:25),
                    backgroundColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side:const  BorderSide(
                        width: 0.5,
                        color: Colors.grey,
                      ),
                    ),
                    disabledColor: Colors.transparent,
                    selectedColor: AppColors.blue,
                    labelStyle: TextStyle(
                        color: (_value==index)?Colors.white:Colors.black,
                        fontWeight: FontWeight.w400,
                    ),
                    selected:_value==index ,
                    onSelected: (bool selected) {
                      setState(() {
                        _value =  index ;
                      });
                    }
                    );
              },
      ),
    );
  }
}
