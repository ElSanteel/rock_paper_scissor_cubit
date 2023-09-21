import 'package:flutter/material.dart';

import '../../../components/Session 6/custom_elevated_button.dart';
import '../../../components/Session 6/custom_image.dart';
import '../../../components/Session 6/custom_text.dart';
import '../../../enums/Session 6/rock_paper_scissor_app/game_enum.dart';
import '../../../enums/Session 6/rock_paper_scissor_app/result_enum.dart';

class ResultScreen extends StatelessWidget {
  final ResultEnum resultEnum;
  final GameEnum userChoice;
  final GameEnum cpuChoice;

  const ResultScreen(this.resultEnum, this.userChoice, this.cpuChoice,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1b2b4c),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(text: resultEnum.name, size: 40, isBold: true),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    CustomText(text: "User", size: 35),
                    ImageWidget(userChoice.name)
                  ],
                ),
                const Spacer(),
                Column(
                  children: [
                    CustomText(text: "CPU", size: 35),
                    ImageWidget(cpuChoice.name)
                  ],
                )
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButtonWidget(
              text: "back",
              buttonFunction: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
