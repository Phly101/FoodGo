import 'package:flutter/material.dart';

class CommonText extends StatelessWidget {

  final String text;


  final Color color;
  final FontWeight fontWeight;
  final double fontSize;
  final TextAlign? textAlign;

  const CommonText({
    super.key,
    required this.text,
    this.color = Colors.black,
    this.fontWeight = FontWeight.normal,
    this.fontSize = 14.0,
    this.textAlign,
  });

  @override
  Widget build(final BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        color: color,
        fontWeight: fontWeight,
        fontSize: fontSize,

      ),
    );
  }
}