import '../models/activity.dart';

class FunDirector {
  const FunDirector();

  ActivityType? _lastType;

  bool isRepeated(Activity activity) {
    return _lastType == activity.type;
  }

  void register(Activity activity) {
    _lastType = activity.type;
  }

  void reset() {
    _lastType = null;
  }
}