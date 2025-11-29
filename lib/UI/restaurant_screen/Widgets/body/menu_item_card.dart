import 'package:flutter/material.dart';
import 'package:food_go/Models/resMenuModel/menu_item_model.dart';
import 'package:food_go/common/common_text.dart';
import 'package:food_go/utils/app_colors.dart';

class MenuItemCard extends StatelessWidget {
  final MenuItemModel item;

  const MenuItemCard({super.key, required this.item});

  @override
  Widget build(final BuildContext context) {
    return InkWell(
      onTap: () {
        //Todo: Navigate to Menu item details screen
      },
      child: Container(

        margin: const EdgeInsets.only(bottom: 16.0),
        decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: AppColors.white,
          boxShadow: [
            const BoxShadow(
              color: AppColors.grey,
              offset: Offset(3, 2),
              blurRadius: 3,
              spreadRadius: 3,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100,
              decoration: BoxDecoration(
                color: AppColors.shimmerContainer,
                borderRadius: BorderRadius.circular(12.0),
              ),
            ),
            const SizedBox(height: 8.0),

            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: CommonText(
                text: item.title,
                fontSize: 14.0,
                fontWeight: FontWeight.w600,
                color: AppColors.black,
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: CommonText(
                text: item.restaurant,
                fontSize: 12.0,
                color: AppColors.grey50,
              ),
            ),
            const SizedBox(height: 4.0),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CommonText(
                    text: '\$${item.price.toStringAsFixed(2)}',
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: AppColors.black,
                  ),

                  GestureDetector(
                    onTap: () {
                      //Todo: activate the cart bloc
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: const BoxDecoration(
                          color: AppColors.addButton,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.add,
                          color: AppColors.white,
                          size: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
