import 'package:flutter/material.dart';
import 'package:food_go/UI/cart/widgets/body/cart_body_widget.dart';
import 'package:food_go/UI/cart/widgets/header/cart_header_widget.dart';
import 'package:food_go/UI/cart/widgets/slidable/slidable.dart';

import 'package:food_go/utils/app_colors.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(final BuildContext context) {


    return const Scaffold(
      backgroundColor: AppColors.cartPageBackground,

      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 8.0,
                  right: 8.0,
                  top: 8.0,
                  bottom: 8.0,
                ),
                child: CartHeaderWidget(),
              ),

              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: CartBodyWidget(),
                ),
              ),
            ],
          ),
          Slideable(),
        ],
      ),
    );
  }
}
