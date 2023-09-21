import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double size;
  bool? isBold;

  CustomText(
      {super.key, required this.text, required this.size, this.isBold = false});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: size,
          color: Colors.white,
          fontWeight: isBold! ? FontWeight.bold : FontWeight.normal),
    );
  }
}
