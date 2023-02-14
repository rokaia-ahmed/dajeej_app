import 'package:carousel_slider/carousel_slider.dart';
import 'package:dajeej/core/utils/media_query_values.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class CustomCarouselSlider extends StatefulWidget {
  const  CustomCarouselSlider({Key? key,required this.images}) : super(key: key);
  final List<String> images;
  @override
  State<CustomCarouselSlider> createState() => _CustomCarouselSliderState();
}

class _CustomCarouselSliderState extends State<CustomCarouselSlider> {

    int activeIndex=0;
  @override
  Widget build(BuildContext context) {
    return
      CarouselSlider(
          items:widget.images.map((e) =>Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Image.asset(
                e,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  AnimatedSmoothIndicator(
                      activeIndex: activeIndex,
                      count: widget.images.length,
                      effect: const SlideEffect(
                        activeDotColor: Colors.black,
                        dotColor:Colors.grey,
                        dotHeight: 10,
                        dotWidth: 10,
                      ),
                  ),
                  SizedBox(
                    height: context.height*0.02,
                  ),
                ],
              ),
            ],
          )).toList(),
          options: CarouselOptions(
            height:context.height*0.26,
           // aspectRatio: 16/9,
            viewportFraction: 0.9,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: false,
            autoPlayCurve: Curves.fastOutSlowIn,
            scrollDirection: Axis.horizontal,
            onPageChanged: (int index,d){
              setState(() {
                activeIndex=index;
              });
            }
          ),
      );
  }
}
