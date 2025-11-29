import 'package:flutter/material.dart';
import 'package:food_go/Data/resData/body_data.dart';
import 'package:food_go/UI/home/widgets/body/body_item_widget.dart';
import 'package:food_go/common/common_text.dart';
import 'package:food_go/utils/app_colors.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({super.key});

  @override
  Widget build(final BuildContext context) {
    final restaurants = BodyData.sampleRestaurants;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CommonText(
                text: 'Open Restaurants',
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
              InkWell(
                onTap: () {
                  //Todo: activate the button function
                },
                child: const CommonText(
                  text: 'See All >',
                  color: AppColors.specialText,
                ),
              ),
            ],
          ),
        ),
        ...restaurants.map((final restaurant) {
          return BodyItemWidget(
            bodyModel: restaurant,
          );
        }),
      ],
    );
  }
}
