import 'package:flutter/material.dart';
import 'package:food_go/UI/checkout/widgets/payment_enum.dart';
import 'package:food_go/utils/app_colors.dart';

class PaymentOptionTile extends StatelessWidget {
  final PaymentMethod method;
  final PaymentMethod selectedMethod;
  final String title;
  final IconData icon;
  final ValueChanged<PaymentMethod> onSelected;
  final Widget? leading; // Added for Credit Card Icon

  const PaymentOptionTile({
    super.key,
    required this.method,
    required this.selectedMethod,
    required this.title,
    required this.icon,
    required this.onSelected,
    this.leading,
  });

  @override
  Widget build(final BuildContext context) {
    final bool isSelected = selectedMethod == method;
    return GestureDetector(
      onTap: () => onSelected(method),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 16),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.addButton.withValues(alpha: 0.1) : AppColors.secondaryBackground,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: isSelected ? AppColors.addButton : Colors.grey.shade600,
            width: isSelected ? 2 : 1,
          ),
          boxShadow: [
            if (isSelected)
              BoxShadow(
                color: AppColors.addButton.withValues(alpha: 0.1),
                blurRadius: 8,
                offset: const Offset(0, 4),
              ),
          ],
        ),
        child: Row(
          children: [
            if (leading != null) leading!,
            if (leading == null) Icon(icon, color: isSelected ? AppColors.addButton : AppColors.textLight, size: 22),
            const SizedBox(width: 15),
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: isSelected ? AppColors.addButton : AppColors.textLight,
                fontSize: 16,
              ),
            ),
            const Spacer(),
            if (isSelected)
              const Icon(
                Icons.check_circle,
                color: AppColors.addButton,
                size: 24,
              ),
          ],
        ),
      ),
    );
  }
}