import '../models/game_session.dart';
import '../models/room.dart';
import 'id_service.dart';

class GameSessionFactory {
  const GameSessionFactory();

  GameSession create(Room room) {
    return GameSession(
      id: IdService.generate(),
      room: room,
      players: List.from(room.players),
      startedAt: DateTime.now(),
    );
  }
}