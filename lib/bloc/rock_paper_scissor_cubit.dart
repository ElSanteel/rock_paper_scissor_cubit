import 'dart:math';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:flutter/material.dart';

import '../enums/Session 6/rock_paper_scissor_app/game_enum.dart';
import '../enums/Session 6/rock_paper_scissor_app/result_enum.dart';

part 'rock_paper_scissor_state.dart';

class RockPaperScissorCubit extends Cubit<RockPaperScissorState> {
  RockPaperScissorCubit() : super(RockPaperScissorInitial());
  static RockPaperScissorCubit get(context) => BlocProvider.of(context);

  int userCounter = 0;
  int cpuCounter = 0;
  GameEnum? userChoice;
  GameEnum? cpuChoice;
  ResultEnum? result;
  void makeRockChoice() {
    userChoice = GameEnum.rock;
    makeCpuChoice();
    calculateResult();
    emit(RockState());
  }

  void makePaperChoice() {
    userChoice = GameEnum.paper;
    makeCpuChoice();
    calculateResult();
    emit(PaperState());
  }

  void makeScissorChoice() {
    userChoice = GameEnum.scissor;
    makeCpuChoice();
    calculateResult();
    emit(ScissorState());
  }

  void makeCpuChoice() {
    Random random = Random();
    int randomNumber = random.nextInt(3);
    cpuChoice = GameEnum.values[randomNumber];
  }

  void calculateResult() {
    if (userChoice == GameEnum.rock) {
      if (cpuChoice == GameEnum.rock) {
        result = ResultEnum.draw;
      } else if (cpuChoice == GameEnum.paper) {
        cpuCounter++;

        result = ResultEnum.lose;
      } else {
        result = ResultEnum.win;
        userCounter++;
      }
    } else if (userChoice == GameEnum.paper) {
      if (cpuChoice == GameEnum.rock) {
        result = ResultEnum.win;
        userCounter++;
      } else if (cpuChoice == GameEnum.paper) {
        result = ResultEnum.draw;
      } else {
        result = ResultEnum.lose;
        cpuCounter++;
      }
    } else {
      if (cpuChoice == GameEnum.rock) {
        result = ResultEnum.lose;
        cpuCounter++;
      } else if (cpuChoice == GameEnum.paper) {
        result = ResultEnum.win;
        userCounter++;
      } else {
        result = ResultEnum.draw;
      }
    }
  }
}
