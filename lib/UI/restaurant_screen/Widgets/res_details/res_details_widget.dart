import 'package:flutter/material.dart';
import 'package:food_go/common/common_text.dart';
import 'package:food_go/utils/app_colors.dart';

class ResDetailsWidget extends StatelessWidget {
  final int rating;
  final String delivery;
  final String time;
  final String resName;
  final String resDetails;

  const ResDetailsWidget({
    super.key,
    required this.rating,
    required this.delivery,
    required this.time,
    required this.resName,
    required this.resDetails,
  });

  @override
  Widget build(final BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Icon(
              Icons.star_border,
              color: AppColors.starRating,
              size: 30,
            ),
            const SizedBox(width: 4.0),
            CommonText(
              text: rating.toString(),
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
            CommonText(
              text: delivery,
              fontWeight: FontWeight.w600,
              color: delivery == 'Free'
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
            CommonText(text: time, fontWeight: FontWeight.w600, fontSize: 15),
          ],
        ),
        const SizedBox(height: 15,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '$resName\n\n',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),

                TextSpan(
                  text: resDetails,
                  style: const TextStyle(fontSize: 15, color: AppColors.black),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
