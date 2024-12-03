import 'package:e_app/CustomWidget/AppColors.dart';
import 'package:flutter/material.dart';

import 'Products_indicator.dart';

class ProductsDetailsScreen extends StatelessWidget {
  ProductsDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: .0,
        title: Text(
          'Product Details',
          style: TextStyle(
            color: AppColors.accentColor,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start, // Align children to the start (left)
          children: [
            ProductsIndicator(),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start, // Ensure all text is left-aligned
                children: [
                  Text(
                    'Calvin Regular fit site fit shirt',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        '\$35',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(width: 10),
                      Text(
                        '\$45',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: AppColors.secondaryColor,
                          decoration: TextDecoration.lineThrough,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Divider(
                    color: AppColors.secondaryColor.withOpacity(.1),
                  ),
                  SizedBox(height: 5),
                  // "Description" header
                  Text(
                    'Description',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppColors.accentColor,
                    ),
                  ),
                  Text(
                    'Select the country to which you want to send your SMS by choosing a name from this list. The page that is currently visible on your screen requires you to enter the number of the recipient of your SMS. Before entering the number you should change the country code browsing through the list or typing the country’s name in the search bar on top. Countries are listed in an alphabetical order. Select the country to which you want to send your SMS by choosing a name from this list',
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 60,
        //color: AppColors.primaryColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Add Cart',
                  style: TextStyle(color: AppColors.primaryColor),
                ))
          ],
        ),
      ),
    );
  }
}
