part of 'rock_paper_scissor_cubit.dart';

@immutable
abstract class RockPaperScissorState {}

class RockPaperScissorInitial extends RockPaperScissorState {}

class RockState extends RockPaperScissorState {}

class PaperState extends RockPaperScissorState {}

class ScissorState extends RockPaperScissorState {}
