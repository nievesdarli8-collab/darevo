import '../models/room.dart';

class SessionEngine {
  Room? _currentRoom;

  Room? get currentRoom => _currentRoom;

  bool get hasSession => _currentRoom != null;

  void start(Room room) {
    _currentRoom = room;
  }

  void end() {
    _currentRoom = null;
  }
}