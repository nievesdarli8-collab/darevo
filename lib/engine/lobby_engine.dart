import '../models/room.dart';
import '../models/room_state.dart';

class LobbyEngine {
  const LobbyEngine();

  bool isReady(Room room) {
    return room.players.length >= 2 &&
        room.state == RoomState.waiting;
  }

  bool canStart(Room room) {
    return isReady(room);
  }
}