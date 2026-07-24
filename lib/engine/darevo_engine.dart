import '../models/room.dart';
import 'activity_engine.dart';
import 'player_engine.dart';
import 'game_state_engine.dart';

class DarevoEngine {
  DarevoEngine._();

  static final DarevoEngine instance = DarevoEngine._();

  Room? _currentRoom;

  final ActivityEngine activityEngine = ActivityEngine.instance;
  final PlayerEngine playerEngine = PlayerEngine.instance;
  final GameStateEngine gameStateEngine = GameStateEngine.instance;

  String get version => "0.0.3 Pre-Alpha";

  Room? get currentRoom => _currentRoom;

  void setRoom(Room room) {
    _currentRoom = room;
  }

  bool get hasRoom => _currentRoom != null;

  void reset() {
  _currentRoom = null;
  activityEngine.clear();
  playerEngine.clear();
  gameStateEngine.reset();
}