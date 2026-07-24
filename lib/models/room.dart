/// ===========================================================
/// ROOM MODEL
/// Representa una sala de juego de DAREVO.
/// ===========================================================

import 'player.dart';

class Room {
  final String id;
  final String code;
  final List<Player> players;
  bool started;

  Room({
    required this.id,
    required this.code,
    this.players = const [],
    this.started = false,
  });

  int get playerCount => players.length;

  bool get isEmpty => players.isEmpty;

  bool get isFull => players.length >= 12;

  @override
  String toString() {
    return 'Room(code: $code, players: $playerCount)';
  }
}