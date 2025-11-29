import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_go/UI/checkout/widgets/credit_card_form.dart';
import 'package:food_go/UI/checkout/widgets/payment_enum.dart';
import 'package:food_go/UI/checkout/widgets/payment_option_tile.dart';
import 'package:food_go/UI/home/home_screen.dart';
import 'package:food_go/blocs/cart/cart_bloc.dart';
import 'package:food_go/utils/app_colors.dart';

class CheckoutPage extends StatefulWidget {
  final double totalPrice;

  const CheckoutPage({super.key, required this.totalPrice});

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  PaymentMethod _selectedMethod = PaymentMethod.creditCard;

  final GlobalKey<FormState> _cardFormKey = GlobalKey<FormState>();
  final TextEditingController _cardNumberController = TextEditingController(
    text: '4242 4242 4242 4242',
  );
  final TextEditingController _expiryDateController = TextEditingController(
    text: '12/28',
  );
  final TextEditingController _cvcController = TextEditingController(
    text: '123',
  );

  final String _deliveryAddress = '2118 Thornridge Cir. Syracuse';
  final double _deliveryFee = 5.00;
  final double _taxes = 1.25;

  @override
  void dispose() {
    _cardNumberController.dispose();
    _expiryDateController.dispose();
    _cvcController.dispose();
    super.dispose();
  }

  void _selectPaymentMethod(final PaymentMethod method) {
    setState(() {
      _selectedMethod = method;
    });
  }

  void _handlePay() {
    if (_selectedMethod == PaymentMethod.creditCard) {
      if (_cardFormKey.currentState?.validate() ?? false) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Processing Credit Card Payment...')),
        );

        _cardNumberController.clear();
        _expiryDateController.clear();
        _cvcController.clear();


        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => const HomeScreen()),
        );
        context.read<CartBloc>().add(CartClear());
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Placing Cash on Delivery Order...')),
      );


      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const HomeScreen()),
      );
      context.read<CartBloc>().add(CartClear());
    }
  }


  @override
  Widget build(final BuildContext context) {
    return
      Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildHeader('DELIVERY ADDRESS', hasEdit: true),
                  const SizedBox(height: 10),
                  _buildAddressBox(),
                  const SizedBox(height: 30),

                  _buildHeader('SELECT PAYMENT METHOD'),
                  const SizedBox(height: 15),

                  PaymentOptionTile(
                    method: PaymentMethod.creditCard,
                    selectedMethod: _selectedMethod,
                    title: 'Credit/Debit Card (Visa/Master)',
                    icon: FontAwesomeIcons.creditCard,
                    onSelected: _selectPaymentMethod,
                    leading: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          FontAwesomeIcons.ccVisa,
                          color: Colors.blue,
                          size: 18,
                        ),
                        SizedBox(width: 5),
                        Icon(
                          FontAwesomeIcons.ccMastercard,
                          color: Colors.red,
                          size: 18,
                        ),
                        SizedBox(width: 5),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),

                  PaymentOptionTile(
                    method: PaymentMethod.cashOnDelivery,
                    selectedMethod: _selectedMethod,
                    title: 'Cash on Delivery',
                    icon: FontAwesomeIcons.dollarSign,

                    onSelected: _selectPaymentMethod,
                  ),

                  if (_selectedMethod == PaymentMethod.creditCard)
                    CreditCardForm(
                      formKey: _cardFormKey,
                      cardNumberController: _cardNumberController,
                      expiryDateController: _expiryDateController,
                      cvcController: _cvcController,
                    ),

                  const SizedBox(height: 40),

                  _buildOrderTotalBox(),
                ],
              ),
            ),
          ),

          _buildPayButton(context),
        ],

    );
  }

  Widget _buildHeader(final String title, {final bool hasEdit = false}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: AppColors.white,
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
        if (hasEdit)
          const Text(
            'EDIT',
            style: TextStyle(
              color: AppColors.addButton,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
      ],
    );
  }

  Widget _buildAddressBox() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      decoration: BoxDecoration(
        color: AppColors.secondaryBackground,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        _deliveryAddress,
        style: const TextStyle(color: AppColors.textLight, fontSize: 16),
      ),
    );
  }

  Widget _buildTotalRow(
    final String label,
    final double amount, {
    final bool isTotal = false,
  }) {
    return Padding(
      padding: EdgeInsets.only(bottom: isTotal ? 0 : 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              color: isTotal ? AppColors.textLight : AppColors.hintText,
              fontWeight: isTotal ? FontWeight.bold : FontWeight.normal,
              fontSize: isTotal ? 18 : 16,
            ),
          ),
          Text(
            '\$${amount.toStringAsFixed(2)}',
            style: TextStyle(
              color: isTotal ? AppColors.addButton : AppColors.textLight,
              fontWeight: isTotal ? FontWeight.bold : FontWeight.normal,
              fontSize: isTotal ? 20 : 16,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildOrderTotalBox() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.secondaryBackground,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'ORDER TOTAL:',
            style: TextStyle(
              color: AppColors.textLight,
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 10),

          _buildTotalRow('Delivery Fee', _deliveryFee),
          _buildTotalRow('Taxes', _taxes),
          const Divider(color: AppColors.hintText, height: 25),

          _buildTotalRow('GRAND TOTAL', widget.totalPrice+_deliveryFee+_taxes, isTotal: true),
        ],
      ),
    );
  }

  Widget _buildPayButton(final BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: SafeArea(
        top: false,
        child: ElevatedButton(
          onPressed: _handlePay,
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.addButton,
            minimumSize: const Size(double.infinity, 60),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 5,
          ),
          child: Text(
            'PAY \$${(widget.totalPrice+_deliveryFee+_taxes).toStringAsFixed(2)}',
            style: const TextStyle(
              color: AppColors.textLight,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
