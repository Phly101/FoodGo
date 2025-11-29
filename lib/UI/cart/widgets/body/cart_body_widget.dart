import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_go/Models/cartModel/cart_item_model.dart';
import 'package:food_go/UI/cart/widgets/body/cart_item_card.dart';
import 'package:food_go/blocs/cart/cart_bloc.dart';
import 'package:food_go/common/common_text.dart';
import 'package:food_go/utils/app_colors.dart';

class CartBodyWidget extends StatelessWidget {
  const CartBodyWidget({super.key});

  @override
  Widget build(final BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      builder: (final context, final state) {
        if (state is CartEmpty) {
          return const Center(
            child: CommonText(
              text: 'Cart is empty...',
              color: AppColors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          );
        } else if (state is CartLoading) {
          return const CircularProgressIndicator(color: AppColors.specialText);
        } else if (state is CartHasData) {
          final List<CartItemModel> cartItems = state.items;

          return Padding(
            padding: const EdgeInsets.only(bottom: 200.0),
            child: ListView.separated(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (_, final index) {
                return CartItemCard(item: cartItems[index]);
              },
              separatorBuilder: (_, final __) => const SizedBox(height: 15),
              itemCount: cartItems.length,
            ),
          );
        }

        return const SizedBox();
      },
    );
  }
}
