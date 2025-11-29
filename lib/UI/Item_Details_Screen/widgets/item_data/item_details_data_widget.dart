import 'package:flutter/material.dart';
import 'package:food_go/Models/resMenuModel/menu_item_model.dart';
import 'package:food_go/Models/resModel/body_model.dart';
import 'package:food_go/UI/Item_Details_Screen/widgets/item_data/size_widget.dart';
import 'package:food_go/common/common_text.dart';
import 'package:food_go/utils/app_colors.dart';

class ItemDetailsDataWidget extends StatefulWidget {
  final MenuItemModel item;
  final BodyModel resItem;
  final String mockDeliveryTime = '20-30 min';
  final String mockDeliveryPrice = '\$5.00';

  const ItemDetailsDataWidget({
    super.key,
    required this.item,
    required this.resItem,
  });

  @override
  State<ItemDetailsDataWidget> createState() => _ItemDetailsDataWidgetState();
}

class _ItemDetailsDataWidgetState extends State<ItemDetailsDataWidget> {
  String? _selectedSize;

  @override
  void initState() {
    super.initState();

    if (widget.item.itemSizes != null && widget.item.itemSizes!.isNotEmpty) {
      _selectedSize = widget.item.itemSizes!.first;
    }
  }

  void _selectSize(final String size) {
    setState(() {
      _selectedSize = size;
    });
  }

  @override
  Widget build(final BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CommonText(
          text: widget.item.restaurant,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '${widget.item.title}\n\n',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),
                TextSpan(
                  text: widget.item.itemDetails,
                  style: const TextStyle(fontSize: 15, color: AppColors.black),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 15),
        Row(
          children: [
            const Icon(
              Icons.star_border,
              color: AppColors.starRating,
              size: 30,
            ),
            const SizedBox(width: 4.0),
            CommonText(
              text: widget.resItem.rating.toString(),
              fontWeight: FontWeight.w600,
              fontSize: 15,
            ),
            const SizedBox(width: 16.0),

            const Icon(
              Icons.directions_bike,
              color: AppColors.starRating,
              size: 30,
            ),
            const SizedBox(width: 4.0),
            // Mock delivery data
            CommonText(
              text: widget.mockDeliveryPrice,
              fontWeight: FontWeight.w600,
              color: widget.mockDeliveryPrice == 'Free'
                  ? AppColors.doneButton
                  : AppColors.black,
              fontSize: 15,
            ),
            const SizedBox(width: 16.0),
            const Icon(
              Icons.access_time,
              color: AppColors.starRating,
              size: 30,
            ),
            const SizedBox(width: 4.0),
            CommonText(
              text: widget.mockDeliveryTime,
              fontWeight: FontWeight.w600,
              fontSize: 15,
            ),
          ],
        ),
        const SizedBox(height: 25),

        SizeWidget(
          itemSizes: widget.item.itemSizes ?? [],
          selectedSize: _selectedSize,
          onSizeTap: _selectSize,
        ),
        const SizedBox(height: 15),
      ],
    );
  }
}
