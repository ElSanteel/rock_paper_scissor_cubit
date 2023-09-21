import 'package:flutter/material.dart';

class ElevatedButtonWidget extends StatelessWidget {
  String text;

  dynamic buttonFunction;

  ElevatedButtonWidget(
      {required this.text, required this.buttonFunction, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: buttonFunction,
      style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
      child: Text(
        text,
        style: const TextStyle(fontSize: 40),
      ),
    );
  }
}
