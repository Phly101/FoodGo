import 'package:flutter/material.dart';
import 'package:food_go/Data/categoriesData/category_data.dart';
import 'package:food_go/UI/home/widgets/categories/category_item_widget.dart';

import 'package:food_go/common/common_text.dart';
import 'package:food_go/utils/app_colors.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(final BuildContext context) {
    final category = CategoryData.sampleCategories;
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CommonText(
                  text: 'All Categories',
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
                InkWell(
                  onTap: () {
                    //Todo: navigate to category screen.
                  },
                  child: const CommonText(
                      text: 'See All >', color: AppColors.specialText),
                ),
              ],
            ),
          ),


          SizedBox(
            height: 60.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 16.0),
              itemCount: category.length,
              itemBuilder: (final context, final index) {
                final bool isSelected = (index == 0);
                return CategoryItemWidget(
                  category: category[index],
                  isSelected: isSelected,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}