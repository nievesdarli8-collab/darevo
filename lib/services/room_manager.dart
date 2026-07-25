import '../models/room.dart';
import '../models/room_state.dart';

class RoomManager {
  const RoomManager();

  Room updateState(Room room, RoomState state) {
    return Room(
      id: room.id,
      code: room.code,
      players: room.players,
      state: state,
    );
  }

  bool canStart(Room room) {
    return room.players.length >= 2 &&
        room.state == RoomState.waiting;
  }

  bool canJoin(Room room) {
    return room.state == RoomState.waiting;
  }
}