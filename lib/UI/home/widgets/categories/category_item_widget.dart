import 'package:flutter/material.dart';
import 'package:food_go/Models/categoriesModel/category_model.dart';
import 'package:food_go/common/common_text.dart';
import 'package:food_go/utils/app_colors.dart';

class CategoryItemWidget extends StatelessWidget {
  final CategoryModel category;
  final bool isSelected;

  const CategoryItemWidget({
    super.key,
    required this.category,
    this.isSelected = false,
  });

  @override
  Widget build(final BuildContext context) {
    final itemColor = isSelected ? AppColors.specialText : AppColors.grey;
    final textColor = isSelected ? AppColors.white : AppColors.black;

    return Container(
      margin: const EdgeInsets.only(right: 12.0),
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        color: itemColor,
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              color: isSelected
                  ? AppColors.white.withValues(alpha: 0.8)
                  : AppColors.grey50,
              shape: BoxShape.circle,
            ),
          ),

          const SizedBox(width: 8.0),

          CommonText(
            text: category.title,
            color: textColor,
            fontWeight: FontWeight.w500,
            fontSize: 14.0,
          ),
        ],
      ),
    );
  }
}
