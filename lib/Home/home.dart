import 'package:e_app/CustomWidget/AppColors.dart';
import 'package:e_app/Sections/category_section.dart';
import 'package:flutter/material.dart';

import '../Sections/slider_scetion.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu)),
        title: Text('Home',
        style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color:
                  AppColors.primaryColor, // Corrected: Use the color directly
            ),
        ),
        centerTitle: false,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.notification_add)),
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart))
        ],
      ),
    
    body: Column(
      children: [
        //category
        CategorySection(),
        SizedBox(
          height: 10,
        ),
        //slider
        SliderSection(),

      ],
    ),
    );
  }
}