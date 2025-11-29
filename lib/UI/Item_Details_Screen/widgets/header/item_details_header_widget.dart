import 'package:flutter/material.dart';
import 'package:food_go/common/common_text.dart';
import 'package:food_go/utils/app_colors.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class ItemDetailsHeaderWidget extends StatelessWidget {
  const ItemDetailsHeaderWidget({super.key});

  @override
  Widget build(final BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 15.0, left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      color: AppColors.grey10,
                    ),
                    child:
                       const Padding(
                        padding: EdgeInsets.only(left: 12.0,right: 8.0,bottom: 8.0,top: 8.0),
                        child: Icon(Icons.arrow_back_ios,size: 25,),
                      ),

                  ),
                ),
                const SizedBox(width: 10),
                const CommonText(text: 'Details', fontSize: 16),
              ],
            ),
          ),
          Shimmer(
            direction: const ShimmerDirection.fromLTRB(),
            enabled: true,
            color: AppColors.white,
            duration: const Duration(seconds: 5),
            interval: const Duration(seconds: 5),
            child: Container(
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                color: AppColors.shimmerContainer,
                borderRadius: BorderRadius.circular(25),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
