import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_go/utils/app_colors.dart';

class CommonCircleActionButton extends StatelessWidget {

  final double size;
  final Color backgroundColor;
  final IconData icon;
  final Color iconColor;
  final double iconSize;
  final VoidCallback? onTap;


  const CommonCircleActionButton({
    super.key,
    this.size = 40.0,
    this.backgroundColor = AppColors.cancelButton,
    required this.icon,
    this.iconColor = AppColors.white,
    this.iconSize = 20.0,
    this.onTap,
  });

  @override
  Widget build(final BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: size,
        height: size,

        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(size / 2),
        ),

        child: Center(
          child: FaIcon(
            icon,
            color: iconColor,
            size: iconSize,
          ),
        ),
      ),
    );
  }
}