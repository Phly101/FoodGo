import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_go/utils/app_colors.dart';

class CreditCardForm extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController cardNumberController;
  final TextEditingController expiryDateController;
  final TextEditingController cvcController;

  const CreditCardForm({
    super.key,
    required this.formKey,
    required this.cardNumberController,
    required this.expiryDateController,
    required this.cvcController,
  });

  String? _validateCardNumber(final String? value) {
    if (value == null || value.isEmpty) return 'Card number is required.';
    final digitsOnly = value.replaceAll(RegExp(r'\s+'), '');
    if (digitsOnly.length != 16 || !RegExp(r'^\d+$').hasMatch(digitsOnly)) {
      return 'Enter a valid 16-digit card number.';
    }
    return null;
  }

  String? _validateExpiryDate(final String? value) {
    if (value == null || value.isEmpty) return 'Expiry date (MM/YY) is required.';
    if (!RegExp(r'^\d{2}/\d{2}$').hasMatch(value)) return 'Format must be MM/YY.';

    final parts = value.split('/');
    final month = int.tryParse(parts[0]);
    final year = int.tryParse(parts[1]);

    if (month == null || year == null || month < 1 || month > 12) {
      return 'Invalid month.';
    }

    final now = DateTime.now();
    final currentYear = now.year % 100;
    final currentMonth = now.month;

    if (year < currentYear || (year == currentYear && month < currentMonth)) {
      return 'Card is expired.';
    }

    return null;
  }

  String? _validateCVC(final String? value) {
    if (value == null || value.isEmpty) return 'CVC is required.';
    if (value.length != 3 || !RegExp(r'^\d+$').hasMatch(value)) {
      return 'CVC must be 3 digits.';
    }
    return null;
  }

  @override
  Widget build(final BuildContext context) {
    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Column(
          children: [
            TextFormField(
              controller: cardNumberController,
              keyboardType: TextInputType.number,
              style: const TextStyle(color: AppColors.white), // <-- added
              decoration: const InputDecoration(
                labelText: 'Card Number',
                labelStyle: TextStyle(color: AppColors.white),
                prefixIcon: Icon(FontAwesomeIcons.solidCreditCard, size: 20, color: AppColors.white),
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: AppColors.addButton),
                ),
              ),
              validator: _validateCardNumber,
            ),
            const SizedBox(height: 15),

            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: expiryDateController,
                    keyboardType: TextInputType.datetime,
                    style: const TextStyle(color: AppColors.white), // <-- added
                    decoration: const InputDecoration(
                      labelText: 'MM/YY',
                      labelStyle: TextStyle(color: AppColors.white),
                      hintStyle: TextStyle(color: AppColors.white),
                      hintText: 'MM/YY',
                      prefixIcon: Icon(FontAwesomeIcons.calendar, size: 20, color: AppColors.white),
                      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: AppColors.addButton),
                      ),
                    ),
                    validator: _validateExpiryDate,
                  ),
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: TextFormField(
                    controller: cvcController,
                    keyboardType: TextInputType.number,
                    obscureText: true,
                    style: const TextStyle(color: AppColors.white), // <-- added
                    decoration: const InputDecoration(
                      labelText: 'CVC',
                      labelStyle: TextStyle(color: AppColors.white),
                      prefixIcon: Icon(FontAwesomeIcons.lock, size: 20, color: AppColors.white),
                      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: AppColors.addButton),
                      ),
                    ),
                    validator: _validateCVC,
                  ),
                ),
              ],
            )

          ],
        ),
      ),
    );
  }
}