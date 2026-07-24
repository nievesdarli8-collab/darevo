import '../models/player.dart';

class TurnEngine {
  TurnEngine._();

  static final TurnEngine instance = TurnEngine._();

  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  Player? currentPlayer(List<Player> players) {
    if (players.isEmpty) return null;

    if (_currentIndex >= players.length) {
      _currentIndex = 0;
    }

    return players[_currentIndex];
  }

  void next(List<Player> players) {
    if (players.isEmpty) return;

    _currentIndex++;

    if (_currentIndex >= players.length) {
      _currentIndex = 0;
    }
  }

  void reset() {
    _currentIndex = 0;
  }
}