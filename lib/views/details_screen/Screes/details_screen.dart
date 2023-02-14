import 'package:dajeej/core/utils/media_query_values.dart';
import 'package:dajeej/core/widgets/custom_app_bar.dart';
import 'package:dajeej/views/home/widgets/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../../../core/utils/app_colors.dart';
import '../../../core/utils/navigator.dart';
import '../widgets/custom_bottom_sheet.dart';

class DetailsScreen extends StatelessWidget {
  DetailsScreen({Key? key}) : super(key: key);
  final List<String> images = [
    'assets/images/chair.png',
    'assets/images/chair.png',
    'assets/images/chair.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(context.height * 0.08),
        child: const CustomAppBar(text: 'Dajeej'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.favorite,
                      color: Colors.grey[400],
                      size: 25,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.share_outlined,
                      color: Colors.grey[400],
                      size: 25,
                    ),
                  ),
                ],
              ),
              CustomCarouselSlider(
                images: images,
              ),
              SizedBox(height: context.height * 0.03),
              Container(
                height: 1,
                width: double.infinity,
                color: Colors.grey[300],
              ),
              SizedBox(height: context.height * 0.02),
              const Text(
                'Apple',
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: context.height * 0.01),
              const Text(
                'Apple iPhone 14 Pro 5G 128GB - Gold',
                maxLines: 1,
                style: TextStyle(fontSize: 16, overflow: TextOverflow.ellipsis),
              ),
              SizedBox(height: context.height * 0.01),
              Text(
                '6.1-inch Super Retina XDR display featuring Always On Dynamic Island, a magical new way to interact with iPhone 48MP Main camera for up to 4x greater resolution Cinematic mode now in 4K Dolby Vision up to 30 fps Action mode for smooth, steady, handheld videos Vital safety technology Crash Detection, calls for help when you can\'t All day battery life and up to 23 hours of video playback A16 Bionic, the ultimate smartphone chip. Superfast 5G cellular Industry-leading durability features with Ceramic Shield and water resistance IOS 16 offers even more ways to personalize, communicate, and share',
                maxLines: 7,
                style: TextStyle(
                  color: Colors.grey[600],
                  height: 1.2,
                ),
              ),
              SizedBox(height: context.height * 0.03),
              const Text(
                'Related Products',
                maxLines: 1,
                style: TextStyle(fontSize: 16, overflow: TextOverflow.ellipsis),
              ),
              SizedBox(height: context.height * 0.03),
              SizedBox(
                height: context.height * 0.4,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => buildItem(context),
                    separatorBuilder: (context, index) => SizedBox(
                          width: context.width * 0.03,
                        ),
                    itemCount: 15),
              ),
            ],
          ),
        ),
      ),
      bottomSheet:const  CustomBottomSheet(),
    );
  }

  Widget buildItem(BuildContext context) {
    return Container(
      width: context.width * 0.5,
      decoration: BoxDecoration(
          border: Border.all(
        color: Colors.grey[300]!,
        width: 2,
      )),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.topLeft,
              children: [
                InkWell(
                  onTap: () {
                    AppNavigator.push(
                        context: context, screen: DetailsScreen());
                  },
                  child: Image.network(
                    'https://th.bing.com/th/id/OIP.4fMbt3QcCffFTLNkI0km-gAAAA?pid=ImgDet&rs=1',
                    width: context.width * 0.5,
                    height: context.height * 0.2,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: Icon(
                    Icons.favorite,
                    color: Colors.grey[400],
                    size: 30,
                  ),
                ),
              ],
            ),
            SizedBox(height: context.height * 0.01),
            const Text(
              'dioopp[iyygdstrut',
              maxLines: 1,
              style: TextStyle(
                color: Colors.black45,
              ),
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: context.height * 0.003),
            const Text(
              'dioopp',
              maxLines: 2,
              style: TextStyle(
                fontSize: 16,
              ),
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: context.height * 0.001),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  '220 KD',
                  style: TextStyle(
                    color: AppColors.blue,
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                  ),
                ),
                CircleAvatar(
                  radius: 18,
                  backgroundColor: AppColors.primary,
                  child: Icon(
                    Icons.shopping_cart_outlined,
                    color: AppColors.blue,
                    size: 20,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
