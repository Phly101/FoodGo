import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_go/Models/resModel/body_model.dart';
import 'package:food_go/blocs/restaurant/res_bloc.dart';
import 'package:food_go/common/common_text.dart';
import 'package:food_go/utils/app_colors.dart';
import 'package:food_go/utils/routes.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class BodyItemWidget extends StatelessWidget {
  final BodyModel bodyModel;


  const BodyItemWidget({super.key, required this.bodyModel});

  @override
  Widget build(final BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, AppRoutes.restaurant);
        context.read<ResBloc>().add(LoadResDetails(resId: bodyModel.id));
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 20.0, left: 16.0, right: 16.0),

        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: [
            BoxShadow(
              color: AppColors.grey10,
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Shimmer(
              direction: const ShimmerDirection.fromLTRB(),
              enabled: true,
              color: Colors.white,
              duration: const Duration(seconds: 3),
              interval: const Duration(seconds: 5),
              child: Container(
                height: 150,
                decoration: const BoxDecoration(
                  color: AppColors.shimmerContainer,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(12.0),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CommonText(
                    text: bodyModel.resName,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: AppColors.cartIcon,
                  ),

                  const SizedBox(height: 4.0),

                  CommonText(
                    text: bodyModel.mealItems.join('-'),
                    fontSize: 13.0,
                    color: AppColors.grey70,
                  ),

                  const SizedBox(height: 10.0),

                  Row(
                    children: [
                      const Icon(
                        Icons.star_border,
                        color: AppColors.starRating,
                        size: 18,
                      ),
                      const SizedBox(width: 4.0),
                      CommonText(
                        text: bodyModel.rating.toString(),
                        fontWeight: FontWeight.w600,
                      ),
                      const SizedBox(width: 16.0),

                      const Icon(
                        Icons.directions_bike,
                        color: AppColors.starRating,
                        size: 18,
                      ),
                      const SizedBox(width: 4.0),
                      CommonText(
                        text: bodyModel.delivery,
                        fontWeight: FontWeight.w600,
                        color: bodyModel.delivery == 'Free'
                            ? AppColors.doneButton
                            : AppColors.black,
                      ),
                      const SizedBox(width: 16.0),
                      const Icon(
                        Icons.access_time,
                        color: AppColors.starRating,
                        size: 18,
                      ),
                      const SizedBox(width: 4.0),
                      const CommonText(
                        text: '20 min',
                        fontWeight: FontWeight.w600,
                      ),
                    ],
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
