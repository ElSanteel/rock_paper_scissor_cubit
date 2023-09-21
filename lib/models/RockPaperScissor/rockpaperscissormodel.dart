import '../../enums/Session 6/rock_paper_scissor_app/game_enum.dart';
import '../../enums/Session 6/rock_paper_scissor_app/result_enum.dart';

class GameResult {
  final GameEnum userChoice;
  final GameEnum cpuChoice;
  final ResultEnum result;

  GameResult({
    required this.userChoice,
    required this.cpuChoice,
    required this.result,
  });
}
