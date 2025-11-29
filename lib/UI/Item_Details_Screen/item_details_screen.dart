import 'package:flutter/material.dart';
import 'package:food_go/Models/resMenuModel/menu_item_model.dart';
import 'package:food_go/Models/resModel/body_model.dart';
import 'package:food_go/UI/Item_Details_Screen/widgets/footer/item_details_footer_widget.dart';
import 'package:food_go/UI/Item_Details_Screen/widgets/header/item_details_header_widget.dart';
import 'package:food_go/UI/Item_Details_Screen/widgets/item_data/item_details_data_widget.dart';

class ItemDetailsScreen extends StatelessWidget {
  final MenuItemModel item;
  final BodyModel resItem;

  const ItemDetailsScreen({
    super.key,
    required this.item,
    required this.resItem,
  });

  @override
  Widget build(final BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            const ItemDetailsHeaderWidget(),

            ItemDetailsDataWidget(item: item, resItem: resItem),

            ItemDetailsFooterWidget(itemModel: item,),
          ],
        ),
      ),
    );
  }
}
