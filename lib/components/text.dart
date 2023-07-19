import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final bool isBold;
  double? fontSize = 16;

  CustomText(
      {super.key, required this.text, this.fontSize, this.isBold = false});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: fontSize,
          color: Colors.white,
          fontWeight: isBold ? FontWeight.bold : FontWeight.normal),
    );
  }
}
