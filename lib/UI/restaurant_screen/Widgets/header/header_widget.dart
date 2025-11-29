import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_go/utils/app_colors.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class ResDetailsHeaderWidget extends StatelessWidget {
  const ResDetailsHeaderWidget({super.key});

  @override
  Widget build(final BuildContext context) {
    return Stack(
      children: [

        Shimmer(
          direction: const ShimmerDirection.fromLTRB(),
          enabled: true,
          color: Colors.white,
          duration: const Duration(seconds: 3),
          interval: const Duration(seconds: 5),
          child: Container(
            width: double.infinity,
            height: 330,
            decoration: const BoxDecoration(
              color: AppColors.shimmerContainer,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
          ),
        ),
        Positioned(
          top: 25,
          left: 20,
          child: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(60),
              ),
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: FaIcon(
                  FontAwesomeIcons.handPointLeft,
                  color: AppColors.shimmerContainer,
                  size: 25,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
