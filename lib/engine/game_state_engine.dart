import '../models/game_state.dart';

class GameStateEngine {
  GameStateEngine._();

  static final GameStateEngine instance = GameStateEngine._();

  GameState _state = GameState.waiting;

  GameState get state => _state;

  bool get isWaiting => _state == GameState.waiting;
  bool get isPlaying => _state == GameState.playing;
  bool get isPaused => _state == GameState.paused;
  bool get isFinished => _state == GameState.finished;

  void changeState(GameState newState) {
    _state = newState;
  }

  void reset() {
    _state = GameState.waiting;
  }
}