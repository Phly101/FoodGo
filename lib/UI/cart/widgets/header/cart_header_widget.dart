import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_go/blocs/editing_mode/cart_iditing_cubit.dart';
import 'package:food_go/common/common_text.dart';
import 'package:food_go/utils/app_colors.dart';

class CartHeaderWidget extends StatelessWidget {
  const CartHeaderWidget({super.key});

  @override
  Widget build(final BuildContext context) {
    return BlocBuilder<CartEditingCubit, bool>(
      builder: (final context, final isEditing) {
        return ListTile(
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Container(
              decoration: BoxDecoration(
                color: AppColors.cartItemColor,
                borderRadius: BorderRadius.circular(60),
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.arrow_back_ios, color: AppColors.white, size: 25),
              ),
            ),
          ),

          title: const CommonText(
            text: 'Cart',
            color: AppColors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),

          trailing: TextButton(
            onPressed: () {
              context.read<CartEditingCubit>().toggle();
            },
            child: Text(
              isEditing ? 'DONE' : 'EDIT ITEMS',
              style: const TextStyle(
                color: AppColors.specialText,
                decoration: TextDecoration.underline,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        );
      },
    );
  }
}
