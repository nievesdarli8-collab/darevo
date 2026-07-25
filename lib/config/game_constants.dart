class GameConstants {
  const GameConstants._();

  static const int defaultRoomCodeLength = 6;

  static const int maxRoomPlayers = 20;

  static const int minRoomPlayers = 2;

  static const int maxPlayerNameLength = 20;

  static const int minPlayerNameLength = 2;

  static const Duration defaultTurnDuration =
      Duration(seconds: 30);

  static const Duration countdownDuration =
      Duration(seconds: 5);
}