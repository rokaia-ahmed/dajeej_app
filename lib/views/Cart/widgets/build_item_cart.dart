
import 'package:dajeej/core/utils/media_query_values.dart';
import 'package:dajeej/views/Cart/widgets/divider.dart';
import 'package:flutter/material.dart';

class BuildItemCart extends StatelessWidget {
  const BuildItemCart({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.separated(
        shrinkWrap: true,
        physics:const BouncingScrollPhysics(),
        itemBuilder: (context,index){
         /* if(index==10) {
            SizedBox(height: context.height*0.5,);
          }*/
          return  buildItem(context) ;
        },
        separatorBuilder: (context,index)=>const CustomDivider(),
        itemCount: 5,
      ),
    );
  }
  Widget buildItem(BuildContext context){
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 5,
      ),
      child: Row(
        children: [
          Image.network('https://th.bing.com/th/id/OIP.4fMbt3QcCffFTLNkI0km-gAAAA?pid=ImgDet&rs=1',
            height:context.height*0.08,
            width:context.width*0.13 ,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Apple iPhone 14 Pro 5G 128GB - Gold',
                maxLines: 1,
                style:TextStyle(
                  fontSize: 13,
                  overflow: TextOverflow.ellipsis,
                ) ,
              ),
              SizedBox(
                height: context.height*0.001,
              ),
              Row(
                children: [
                  const Text('370.900 KD',
                    style:TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ) ,
                  ),
                  SizedBox(
                    width: context.width*0.06,
                  ),
                  InkWell(
                    onTap: (){},
                    child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 2,
                            color: Colors.grey[400]!,
                          ),
                        ),
                        child: const Icon(
                          Icons.add,
                          size: 14,
                          color: Colors.grey,
                        )),
                  ),
                  SizedBox(
                    width: context.width*0.02,
                  ),
                  const Text('1',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    width: context.width*0.02,
                  ),
                  InkWell(
                    onTap: (){},
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 2,
                          color: Colors.grey[400]!,
                        ),
                      ),
                      child: const Padding(
                        padding:  EdgeInsets.only(bottom: 12),
                        child:  Icon(
                          Icons.minimize_outlined,
                          size: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Spacer(),
          InkWell(
            onTap:(){} ,
            child: const Icon(Icons.close,
              size:16 ,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
