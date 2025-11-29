// ResCategoriesWidget.dart

import 'package:flutter/material.dart';
import 'package:food_go/common/common_text.dart';
import 'package:food_go/utils/app_colors.dart';

class ResCategoriesWidget extends StatelessWidget {
  final List<String> mealItems;
  final String selectedCategory;
  final ValueChanged<String> onCategorySelected;

  const ResCategoriesWidget({
    super.key,
    required this.mealItems,
    required this.selectedCategory,
    required this.onCategorySelected,
  });

  @override
  Widget build(final BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: mealItems.map((final category) {
          final isSelected = category == selectedCategory;
          return Padding(
            padding: const EdgeInsets.only(left: 16.0),

            child: GestureDetector(
              onTap: () => onCategorySelected(category),

              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.black.withValues(alpha: 0.6),width: 1.5),
                  color: isSelected
                      ? AppColors.addButton
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: CommonText(
                  text: category,
                  color: isSelected ? AppColors.white : AppColors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
