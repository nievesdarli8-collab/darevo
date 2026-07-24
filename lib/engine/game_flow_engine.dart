import '../models/activity.dart';
import 'activity_engine.dart';
import 'player_engine.dart';

class GameFlowEngine {
  GameFlowEngine._();

  static final GameFlowEngine instance =
      GameFlowEngine._();

  final ActivityEngine activityEngine =
      ActivityEngine.instance;

  final PlayerEngine playerEngine =
      PlayerEngine.instance;

  int _turn = 0;

  int get currentTurn => _turn;

  void nextTurn() {
    _turn++;
  }

  Activity? nextActivity() {
    return activityEngine.nextActivity();
  }

  void reset() {
    _turn = 0;
  }
}