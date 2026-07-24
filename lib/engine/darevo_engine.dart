import '../models/room.dart';
import 'activity_engine.dart';
import 'player_engine.dart';
import 'game_state_engine.dart';
import 'room_engine.dart';
import 'game_flow_engine.dart';

class DarevoEngine {
  DarevoEngine._();

  static final DarevoEngine instance = DarevoEngine._();

  Room? _currentRoom;

  final ActivityEngine activityEngine = ActivityEngine.instance;
  final PlayerEngine playerEngine = PlayerEngine.instance;
  final GameStateEngine gameStateEngine = GameStateEngine.instance;
  final RoomEngine roomEngine = RoomEngine.instance;
  final GameFlowEngine gameFlowEngine =
    GameFlowEngine.instance;

  String get version => "0.0.5 Pre-Alpha";

  Room? get currentRoom => _currentRoom;

  void setRoom(Room room) {
    _currentRoom = room;
  }

  bool get hasRoom => _currentRoom != null;

  void reset() {
  _currentRoom = null;
  activityEngine.reset();
  playerEngine.clear();
  roomEngine.clear();
  gameStateEngine.reset();
  gameFlowEngine.reset();
}