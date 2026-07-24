/// ===========================================================
/// ACTIVITY ENGINE
/// Administra todas las actividades del juego.
/// ===========================================================

class ActivityEngine {
  ActivityEngine._();

  static final ActivityEngine instance = ActivityEngine._();

  final List<String> _activities = [];

  void registerActivity(String activity) {
    _activities.add(activity);
  }

  List<String> get activities =>
      List.unmodifiable(_activities);

  int get totalActivities =>
      _activities.length;

  void clear() {
    _activities.clear();
  }
}