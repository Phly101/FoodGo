import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:food_go/Models/cartModel/cart_item_model.dart';
import 'package:food_go/blocs/cart/cart_bloc.dart';
import 'package:food_go/blocs/editing_mode/cart_iditing_cubit.dart';
import 'package:food_go/common/common_button.dart';
import 'package:food_go/common/common_text.dart';
import 'package:food_go/utils/app_colors.dart';
import 'package:shimmer_animation/shimmer_animation.dart';


class CartItemCard extends StatelessWidget {
  final CartItemModel item;

  const CartItemCard({super.key, required this.item});

  @override
  Widget build(final BuildContext context) {
    final menuItem = item.item;
    final isEditing = context.watch<CartEditingCubit>().state;

    return SizedBox(
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [


          Expanded(
            flex: 2,
            child: Shimmer(
              direction: const ShimmerDirection.fromLTRB(),
              enabled: true,
              color: AppColors.white,
              duration: const Duration(seconds: 5),
              interval: const Duration(seconds: 5),
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                  color: AppColors.cartItemColor,
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
          ),

          const SizedBox(width: 15),

          // CONTENT
          Expanded(
            flex: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: CommonText(
                        text: '${menuItem.title} (x${item.quantity})',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: AppColors.white,
                        maxlines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),

                    if (isEditing)
                      CommonCircleActionButton(
                        icon: FontAwesomeIcons.trashCan,
                        backgroundColor: AppColors.cancelButton,
                        size: 30,
                        iconColor: AppColors.white,
                        onTap: () {
                          context.read<CartBloc>().add(
                            CartDeleteItem(item.uniqueId),
                          );
                        },
                      ),
                  ],
                ),

                const SizedBox(height: 5),


                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CommonText(
                      text: item.selectedSize != null
                          ? '${item.selectedSize} Size'
                          : 'Standard',
                      color: AppColors.grey,
                    ),

                    CommonText(
                      text: '\$${item.subtotal.toStringAsFixed(2)}',
                      fontWeight: FontWeight.bold,
                      color: AppColors.specialText,
                    ),
                  ],
                ),

                const SizedBox(height: 10),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [

                    // SUBTRACT
                    CommonCircleActionButton(
                      icon: FontAwesomeIcons.minus,
                      backgroundColor: AppColors.cartItemColor,
                      size: 30,
                      iconColor: AppColors.white,
                      onTap: () {
                        context.read<CartBloc>()
                            .add(CartSubtractItem(item.uniqueId));
                      },
                    ),

                    const SizedBox(width: 8),

                    CommonText(
                      text: item.quantity.toString(),
                      fontWeight: FontWeight.bold,
                      color: AppColors.white,
                    ),

                    const SizedBox(width: 8),

                    // ADD
                    CommonCircleActionButton(
                      icon: FontAwesomeIcons.plus,
                      backgroundColor: AppColors.cartItemColor,
                      size: 30,
                      iconColor: AppColors.white,
                      onTap: () {
                        context.read<CartBloc>().add(
                          CartAddItem(menuItem),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
