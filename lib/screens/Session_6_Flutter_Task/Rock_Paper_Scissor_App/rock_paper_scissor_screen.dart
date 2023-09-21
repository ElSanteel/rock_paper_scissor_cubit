import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rock_paper_scissor_cubit/bloc/rock_paper_scissor_cubit.dart';
import 'package:rock_paper_scissor_cubit/screens/Session_6_Flutter_Task/Rock_Paper_Scissor_App/result_screen.dart';

import 'dart:math';

import '../../../components/Session 6/counter_result.dart';
import '../../../components/Session 6/custom_image.dart';
import '../../../components/Session 6/custom_text.dart';

class RockPaperScissorScreen extends StatefulWidget {
  const RockPaperScissorScreen({super.key});

  @override
  State<RockPaperScissorScreen> createState() => _RockPaperScissorScreenState();
}

class _RockPaperScissorScreenState extends State<RockPaperScissorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1b2b4c),
      body: BlocConsumer<RockPaperScissorCubit, RockPaperScissorState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          var cubit = RockPaperScissorCubit.get(context);

          return Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 70),
              child: Column(
                children: [
                  CustomText(
                    text: "ROCK",
                    size: 30,
                    isBold: true,
                  ),
                  CustomText(
                    text: "PAPER",
                    size: 30,
                    isBold: true,
                  ),
                  CustomText(
                    text: "SCISSORS",
                    size: 30,
                    isBold: true,
                  ),
                  const SizedBox(height: 10),
                  CustomText(text: "Pick your weapon", size: 20),
                  const SizedBox(height: 10),
                  GestureDetector(
                      onTap: () {
                        cubit.makeRockChoice();
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ResultScreen(cubit.result!,
                                cubit.userChoice!, cubit.cpuChoice!),
                          ),
                        );
                      },
                      child: ImageWidget("rock")),
                  GestureDetector(
                    onTap: () {
                      cubit.makePaperChoice();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ResultScreen(cubit.result!,
                              cubit.userChoice!, cubit.cpuChoice!),
                        ),
                      );
                    },
                    child: ImageWidget("paper"),
                  ),
                  GestureDetector(
                      onTap: () {
                        cubit.makeScissorChoice();
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ResultScreen(cubit.result!,
                                cubit.userChoice!, cubit.cpuChoice!),
                          ),
                        );
                      },
                      child: ImageWidget("scissor")),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        CounterResultWidget("Player", cubit.userCounter),
                        const Spacer(),
                        CounterResultWidget("CPU", cubit.cpuCounter)
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
