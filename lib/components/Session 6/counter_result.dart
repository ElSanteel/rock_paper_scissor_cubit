import 'package:flutter/material.dart';

import 'custom_text.dart';

class CounterResultWidget extends StatelessWidget {
  final String name;
  final int counter;

  const CounterResultWidget(this.name, this.counter, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomText(text: name, size: 20),
        CustomText(
          text: counter.toString(),
          size: 40,
          isBold: true,
        )
      ],
    );
  }
}
