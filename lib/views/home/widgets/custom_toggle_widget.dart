import 'package:dajeej/core/utils/media_query_values.dart';
import 'package:dajeej/views/home/cubit/home_cubit.dart';
import 'package:dajeej/views/home/cubit/home_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/utils/assets_manger.dart';
import '../../Cart/widgets/divider.dart';

class CustomToggleWidget extends StatelessWidget {
  const CustomToggleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeStates>(
      listener: (context, state) {
      },
      builder: (context, state) {
        HomeCubit cubit = HomeCubit.get(context);
        return ListTile(
          textColor: Colors.white,
          leading:Image.asset(cubit.isKwait?
              AppAssets.kuwait
              :AppAssets.saudi,
           width:27,
           height:27 ,
          ) ,
          title:  Text(
            cubit.isKwait?'Kwait':'Saudi',
            style:const TextStyle(
              fontSize: 16,
            ),
          ),
          onTap: () {
            showModalBottomSheet(
              context: context,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape:const OutlineInputBorder(
                borderSide:BorderSide(color: Colors.white) ,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ) ,
              builder: (context) => BottomSheet(
                onClosing:(){
                } ,
                builder:(context ){
                  return SizedBox(
                    height: context.height*0.4,
                    width:double.infinity ,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text('Country',
                            style:TextStyle(
                              fontSize:16 ,
                              fontWeight: FontWeight.bold,
                            ) ,
                          ),
                          SizedBox(height:context.height*0.01 ,),
                          Container(
                            height:context.height*0.007 ,
                            width:context.width*0.22,
                            color:AppColors.blue ,
                          ),
                          ListTile(
                            onTap:(){
                              cubit.kwait();
                              Navigator.pop(context);
                            } ,
                            leading: Image.asset(
                              AppAssets.kuwait,
                              height:30 ,
                              width: 30,
                            ),
                            title:const Text('Kwait') ,
                            trailing:const Icon(Icons.arrow_forward_ios_outlined,
                              color:Colors.grey ,
                              size:22 ,
                            ) ,
                          ),
                          const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: CustomDivider(),
                          ),
                          ListTile(
                            onTap:(){
                              cubit.saudi();
                              Navigator.pop(context);
                            } ,
                            leading: Image.asset(
                              AppAssets.saudi,
                              height:30 ,
                              width: 30,
                            ),
                            title:const Text('Saudi') ,
                            trailing:const Icon(Icons.arrow_forward_ios_outlined,
                              color:Colors.grey ,
                              size:22 ,
                            ) ,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            );
          },
        );
      },
    );
  }
}
