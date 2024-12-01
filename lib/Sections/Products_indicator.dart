import 'package:e_app/CustomWidget/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';
//this code use to for product indicator slider 
class ProductsIndicator extends StatefulWidget {
  const ProductsIndicator({Key? key}) : super(key: key);

  @override
  State<ProductsIndicator> createState() => _ProductsIndicatorState();
}

class _ProductsIndicatorState extends State<ProductsIndicator> {
  // List of images for the slider
  final List<String> slider = [
    'https://static.independent.co.uk/2022/05/25/16/sunglasses%20men%20indybest.jpg?quality=75&width=1200&auto=webp',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJdkkU31VC7SIct2ybCHMBG9BsJdR_t-7XYA&s',
    'https://sellercenter.padmazon.com.bd/assets/images/product-image/5f2ecbb1623e372d739f809a8fbcb388.jpeg',
  ];

  int _currentIndex = 0; // To track the current slide index

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // CarouselSlider
        CarouselSlider.builder(
          itemCount: slider.length,
          itemBuilder: (_, index, pageview) {
            //slider box decuration
            return Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(slider[index]), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(10)),
            );
          },
          options: CarouselOptions(
              height: 300,
              autoPlay: false,
              viewportFraction: 0.9,
              onPageChanged: (index, resson) {
                return setState(() {
                  _currentIndex = index;
                });
              }),
        ),

        Positioned(
          bottom: 10,
          left: 0,
          right: 0,
          child: PageViewDotIndicator(
              currentItem: _currentIndex,
              count: slider.length,
              unselectedColor: AppColors.secondaryColor.withOpacity(.8),
              selectedColor: AppColors.primaryColor),
        )
      ],
    );
  }
}
