import 'package:flutter/material.dart';
import 'package:food_go/Models/resMenuModel/menu_item_model.dart';
import 'package:food_go/Models/resModel/body_model.dart';
import 'package:food_go/UI/restaurant_screen/Widgets/body/menu_item_card.dart';

class ResDetailsBodyWidget extends StatelessWidget {
  final List<MenuItemModel> allRestaurantItems;
  final String selectedCategory;
  final BodyModel resItem;

  const ResDetailsBodyWidget({

    required this.selectedCategory,
    super.key, required this.allRestaurantItems, required this.resItem,
  });

  @override
  Widget build(final BuildContext context) {
    final List<MenuItemModel> filteredItems = allRestaurantItems
        .where((final item) => item.category == selectedCategory)
        .toList();
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: filteredItems.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 0,
          mainAxisExtent: 220,
        ),

        itemBuilder: (final context, final index) {
          return MenuItemCard(item: filteredItems[index], resItem: resItem,);
        },
      ),
    );
  }
}
