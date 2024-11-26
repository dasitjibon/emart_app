import 'package:e_app/CustomWidget/AppColors.dart';
import 'package:flutter/material.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map> Categories = [
      {'name': 'Fashion', 'icon': Icons.man},
      {'name': 'Electronics', 'icon': Icons.computer},
      {'name': 'Application', 'icon': Icons.app_blocking},
      {'name': 'Fashion', 'icon': Icons.man},
      {'name': 'Electronics', 'icon': Icons.computer},
      {'name': 'Application', 'icon': Icons.app_blocking}
    ];
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Categorys',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: AppColors.accentColor,
                  ),
                ),
                Text(
                  'View more',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: AppColors.secondaryColor,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 85,
              child: ListView.separated(
                itemCount: Categories.length,
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) {
                  return SizedBox(
                    width: 10,
                  );
                },
                itemBuilder: (_, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                            color: AppColors.accentColor.withOpacity(.10),
                            shape: BoxShape.circle),
                        child: Icon(Categories[index]['icon'],
                          color: AppColors.accentColor,
                          size: 30,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        Categories[index]['name'],
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      )
                    ],
                  );
                },
              ),
            )
          ],
        ));
  }
}
