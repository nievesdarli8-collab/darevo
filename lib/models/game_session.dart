import 'player.dart';
import 'room.dart';

class GameSession {
  final String id;
  final Room room;
  final List<Player> players;
  final DateTime startedAt;

  const GameSession({
    required this.id,
    required this.room,
    required this.players,
    required this.startedAt,
  });
}