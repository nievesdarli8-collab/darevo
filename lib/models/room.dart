import 'player.dart';

class Room {
  final String id;
  final String code;

  final List<Player> players;

  bool started;

  Room({
    required this.id,
    required this.code,
    List<Player>? players,
    this.started = false,
  }) : players = players ?? [];

  int get playerCount => players.length;

  bool get isEmpty => players.isEmpty;

  bool get isFull => players.length >= 12;

  void addPlayer(Player player) {
    if (!isFull) {
      players.add(player);
    }
  }

  void removePlayer(String id) {
    players.removeWhere((player) => player.id == id);
  }

  @override
  String toString() {
    return 'Room(code: $code, players: $playerCount)';
  }
}