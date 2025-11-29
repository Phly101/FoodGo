import 'package:flutter/material.dart';
import 'package:food_go/common/common_text.dart';
import 'package:food_go/utils/app_colors.dart';

class SizeWidget extends StatelessWidget {
  final List<String> itemSizes;
  final String? selectedSize;
  final Function(String size) onSizeTap;

  const SizeWidget({
    super.key,
    required this.itemSizes,
    required this.selectedSize,
    required this.onSizeTap,
  });

  @override
  Widget build(final BuildContext context) {
    if (itemSizes.isEmpty) {
      return const SizedBox.shrink();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CommonText(
          text: 'Select Size:',
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: AppColors.black,
        ),
        const SizedBox(height: 10),
        Wrap(
          spacing: 10.0,
          children: itemSizes.map((final size) {
            final isSelected = size == selectedSize;
            return GestureDetector(
              onTap: () => onSizeTap(size),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                  color: isSelected ? AppColors.specialText : Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: isSelected ? AppColors.specialText : Colors.grey.shade300,
                  ),
                ),
                child: CommonText(
                  text: size,
                  color: isSelected ? AppColors.white : AppColors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}