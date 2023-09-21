import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  String imageName;
  ImageWidget(this.imageName, {super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/images/$imageName.png", width: 150, height: 150);
  }
}
