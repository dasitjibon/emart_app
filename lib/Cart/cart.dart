import 'package:e_app/CustomWidget/AppColors.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        title: Text(
          'Cart Details',
          style: TextStyle(color: AppColors.primaryColor),
        ),
      ),
      body: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        itemBuilder: (_, index) {
          return Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 5,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // Product Image
                Container(
                  height: 80,
                  width: 70,
                  decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://diamu.com.bd/wp-content/uploads/2019/12/custom-ts.jpg'),
                          fit: BoxFit.cover)),
                ),
                SizedBox(width: 15), // Add spacing between image and text
                // Product Details
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'White T-Shirt for man',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 5), // Spacing between title and price
                      Text(
                        '\$50.00',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[700],
                        ),
                      ),
                      SizedBox(
                          height: 10), // Spacing between price and color row
                      Row(
                        children: [
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.accentColor),
                            child: Center(
                              child: Icon(Icons.remove,
                                  color: Colors.white, size: 15),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            '5',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w800),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.accentColor),
                            child: Center(
                              child: Icon(Icons.add,
                                  color: Colors.white, size: 15),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
        separatorBuilder: (_, index) {
          return SizedBox(height: 10); // Space between list items
        },
        itemCount: 10,
      ),
      bottomNavigationBar: Container(
        height: 60,
        //color: AppColors.primaryColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('total: \1222.08'),
              ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'CheckOut',
                    style: TextStyle(color: AppColors.primaryColor),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
