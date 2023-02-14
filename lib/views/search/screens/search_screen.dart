import 'package:dajeej/core/utils/media_query_values.dart';
import 'package:dajeej/core/utils/navigator.dart';
import 'package:flutter/material.dart';

import '../widgets/build_item_search.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height:context.height*0.055 ,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextFormField(
                        decoration:const InputDecoration(
                          prefixIcon:Icon(Icons.search,
                            size: 22,
                          ) ,
                          suffixIcon:Icon(
                            Icons.close,
                            size: 16,
                          ) ,
                          contentPadding: EdgeInsets.only(top: 3),
                          border: InputBorder.none,
                        ) ,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    child: const Text('Cancel',
                    style:TextStyle(
                      fontWeight: FontWeight.normal,
                    ) ,
                    ),
                  ),
                ],
              ),
              SizedBox(height: context.height*0.02),
              const BuildItemSearch(),
            ],
          ),
        ),
      ) ,
    );
  }
}
