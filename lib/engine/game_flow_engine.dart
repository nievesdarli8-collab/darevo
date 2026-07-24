import '../models/activity.dart';
import '../models/game_turn.dart';
import 'activity_engine.dart';
import 'player_engine.dart';
import 'turn_engine.dart';

class GameFlowEngine {
  GameFlowEngine._();

  static final GameFlowEngine instance = GameFlowEngine._();

  final ActivityEngine activityEngine = ActivityEngine.instance;
  final PlayerEngine playerEngine = PlayerEngine.instance;
  final TurnEngine turnEngine = TurnEngine.instance;

  int _turn = 0;

  int get currentTurn => _turn;

  GameTurn? nextTurn() {
    final player = turnEngine.currentPlayer(playerEngine.players);
    final activity = activityEngine.nextActivity(
  playerCount: playerEngine.totalPlayers,
);
    if (player == null || activity == null) {
      return null;
    }

    final turn = GameTurn(
      number: ++_turn,
      player: player,
      activity: activity,
    );

    turnEngine.next(playerEngine.players);

    return turn;
  }

  void reset() {
    _turn = 0;
    turnEngine.reset();
  }
}