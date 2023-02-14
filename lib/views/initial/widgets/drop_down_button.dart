import 'package:dajeej/core/utils/assets_manger.dart';
import 'package:dajeej/core/utils/media_query_values.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DropDownMenu extends StatefulWidget {
   DropDownMenu({Key? key}) : super(key: key);

  @override
  State<DropDownMenu> createState() => _DropDownMenuState();
}
class _DropDownMenuState extends State<DropDownMenu> {
  int selectedValue=1;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      decoration: BoxDecoration(
        color:Colors.white ,
        borderRadius: BorderRadius.circular(20)
      ),
      child: DropdownButton(
           isExpanded: true,
           elevation: 30,
           underline:const SizedBox() ,
           icon: const Icon(Icons.keyboard_arrow_down,
            color: Colors.blue,
             size: 30,
           ),
           dropdownColor: Colors.white,
           borderRadius: BorderRadius.circular(20),
          value:selectedValue ,
          items: [
            DropdownMenuItem(
               value: 1,
               child: Row(
                 crossAxisAlignment: CrossAxisAlignment.center,
                children:  [
                    CircleAvatar(
                     radius: 17,
                     backgroundImage:AssetImage(AppAssets.kuwait) ,
                   ),
                   SizedBox(width:context.width*0.02 ),
                   Column(
                     mainAxisSize: MainAxisSize.min,
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: const [
                        Text('الكويت',
                        style:TextStyle(fontSize: 14,
                        ) ,
                        ),
                        Text('kuwait',
                          style:TextStyle(fontSize: 14) ,
                        ),
                     ],
                   ),
                ],
              ),
            ),
             DropdownMenuItem(
              value: 2,
              child:Row(
                children:  [
                  CircleAvatar(
                    radius: 17,
                    backgroundImage:AssetImage(AppAssets.saudi) ,
                  ),
                  SizedBox(width:context.width*0.02 ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('السعوديه',
                        style:TextStyle(fontSize: 15) ,
                      ),
                      Text('Saudi',
                        style:TextStyle(fontSize: 14) ,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
          onChanged: ( value){
            setState(() {
              selectedValue= value!;
            });
          }),
    );
  }
}
