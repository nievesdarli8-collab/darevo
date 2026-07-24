import 'activity.dart';
import 'player.dart';

class GameTurn {
  final int number;
  final Player player;
  final Activity activity;

  const GameTurn({
    required this.number,
    required this.player,
    required this.activity,
  });
}