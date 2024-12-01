import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class SliderSection extends StatelessWidget {
  const SliderSection({super.key});

  @override
  Widget build(BuildContext context) {
    // Image URLs
    List<String> slider = [
      'https://img.freepik.com/free-psd/gradient-fashion-youtube-cover-template_23-2150014572.jpg',
      'https://img.freepik.com/free-vector/hand-drawn-texture-boutique-template_23-2149317471.jpg?w=360',
      'https://img.freepik.com/premium-psd/eid-special-fashion-social-media-cover-template_1221833-4.jpg?semt=ais_hybrid'
    ];

    return CarouselSlider.builder(
      itemCount: slider.length,
      itemBuilder: (context, itemIndex, pageViewIndex) {
        return Container(
          
          width: double.infinity,
          height: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(slider[itemIndex]), // Corrected URL access
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(10), // Optional: rounded corners
          ),
          
        );
      },
      options: CarouselOptions(
        height: 120, // Slider height
        aspectRatio: 16 / 9,
        viewportFraction: 0.8,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        enlargeFactor: 0.3,
        onPageChanged: (index, reason) {
          // Handle page change if needed
          print('Page changed to $index');
        },
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
