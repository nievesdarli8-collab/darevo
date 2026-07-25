import '../models/room.dart';
import '../models/game_session.dart';

class SessionEngine {
  GameSession? _currentSession;

  GameSession? get currentSession => _currentSession;

  bool get hasSession => _currentSession != null;

  void start(GameSession session) {
  _currentSession = session;
}

  void end() {
  _currentSession = null;
}
}