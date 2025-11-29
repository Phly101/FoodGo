import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_go/Models/resMenuModel/menu_item_model.dart';
import 'package:food_go/blocs/cart/cart_bloc.dart';
import 'package:food_go/common/common_button.dart';
import 'package:food_go/utils/app_colors.dart';


class _QuantityCounter extends StatefulWidget {
  final MenuItemModel itemModel;

  const _QuantityCounter({required this.itemModel});

  @override
  State<_QuantityCounter> createState() => _QuantityCounterState();
}

class _QuantityCounterState extends State<_QuantityCounter> {
  int _quantity = 1;
  late double _totalPrice;

  @override
  void initState() {
    super.initState();
    _totalPrice = widget.itemModel.price;
  }

  void _calculateTotalPrice() {

    setState(() {
      _totalPrice = widget.itemModel.price * _quantity;
    });
  }

  void _incrementQuantity() {
    _quantity++;
    _calculateTotalPrice();
  }

  void _decrementQuantity() {
    if (_quantity > 1) {
      _quantity--;
      _calculateTotalPrice();
    }
  }

  @override
  Widget build(final BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            Text(
              '\$${_totalPrice.toStringAsFixed(2)}',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),


            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
              decoration: BoxDecoration(
                color: AppColors.cartPageBackground,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: [
                  // subtract button
                  CommonCircleActionButton(
                    icon: FontAwesomeIcons.minus,
                    backgroundColor: AppColors.cartItemColor,
                    size: 25,
                    iconColor: AppColors.white,
                    onTap: _decrementQuantity,
                  ),

                  const SizedBox(width: 16),

                  /// Quantity Display
                  Text(
                    _quantity.toString(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  const SizedBox(width: 16),
                  // add button
                  CommonCircleActionButton(
                    icon: FontAwesomeIcons.plus,
                    backgroundColor: AppColors.cartItemColor,
                    size: 25,
                    iconColor: AppColors.white,
                    onTap: _incrementQuantity,
                  ),
                ],
              ),
            ),
          ],
        ),

        const SizedBox(height: 20),


        GestureDetector(
          onTap: () {

            context.read<CartBloc>().add(CartAddItem(widget.itemModel));

            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  'Added $_quantity x ${widget.itemModel.title} to cart!',
                ),
                duration: const Duration(seconds: 1),
              ),
            );
          },
          child: Container(
            width: double.infinity,
            height: 55,
            decoration: BoxDecoration(
              color: const Color(0xFFFF7A00),
              borderRadius: BorderRadius.circular(15),
            ),
            alignment: Alignment.center,
            child: const Text(
              'ADD TO CART',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ItemDetailsFooterWidget extends StatelessWidget {
  final MenuItemModel itemModel;

  const ItemDetailsFooterWidget({super.key, required this.itemModel});

  @override
  Widget build(final BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFFF2F6FA),
        borderRadius: BorderRadius.circular(20),
      ),

      child: _QuantityCounter(itemModel: itemModel),
    );
  }
}
