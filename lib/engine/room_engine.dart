import '../models/room.dart';

class RoomEngine {
  RoomEngine._();

  static final RoomEngine instance = RoomEngine._();

  final Map<String, Room> _rooms = {};

  void createRoom(Room room) {
    _rooms[room.code] = room;
  }

  Room? getRoom(String code) {
    return _rooms[code];
  }

  bool roomExists(String code) {
    return _rooms.containsKey(code);
  }

  void removeRoom(String code) {
    _rooms.remove(code);
  }

  List<Room> get rooms =>
      List.unmodifiable(_rooms.values);

  void clear() {
    _rooms.clear();
  }
}