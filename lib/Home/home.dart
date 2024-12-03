import 'package:e_app/Cart/cart.dart';
import 'package:e_app/CustomWidget/AppColors.dart';
import 'package:e_app/Sections/category_section.dart';
import 'package:e_app/Sections/products.dart';
import 'package:get/get.dart';

import 'package:flutter/material.dart';

import '../Sections/slider_scetion.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        title: Text(
          'Home',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: AppColors.primaryColor, // Corrected: Use the color directly
          ),
        ),
        centerTitle: false,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notification_add)),
          IconButton(onPressed: () {
            Get.to(()=> CartScreen());
          }, icon: Icon(Icons.shopping_cart))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              // Category Section
              CategorySection(),
              SizedBox(height: 10),
          
              // Slider Section
              SliderSection(),
              SizedBox(height: 10),
          
              // Products Section
              ProductScreen(),
           
          
            ],
          ),
        ),
      ),
    );
  }
}
