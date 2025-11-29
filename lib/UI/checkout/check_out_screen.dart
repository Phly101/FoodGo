import 'package:flutter/material.dart';
import 'package:food_go/UI/checkout/widgets/checkout_content_screen.dart';
import 'package:food_go/utils/app_colors.dart';

class CheckoutScreen extends StatelessWidget {
  final double totalPrice;

  const CheckoutScreen({super.key, required this.totalPrice});

  @override
  Widget build(final BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cartPageBackground,
      appBar: AppBar(
        title: const Text(
          'Checkout',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: AppColors.addButton,
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 0,
      ),

      body: CheckoutPage(
        totalPrice: totalPrice,
      ),
    );
  }
}