import '../data/activity_repository.dart';
import '../models/activity.dart';
import '../services/activity_selector.dart';
import '../services/fun_director.dart';

class ActivityEngine {
  ActivityEngine._();

  static final ActivityEngine instance =
      ActivityEngine._();

  final ActivityRepository repository =
      ActivityRepository.instance;

  final ActivitySelector selector =
    const ActivitySelector();

final FunDirector funDirector =
    const FunDirector();

  int _currentIndex = 0;

  Activity? nextActivity({int playerCount = 2}) {
  final available = selector.filterByPlayers(
    repository.activities,
    playerCount,
  );

  if (available.isEmpty) {
    return null;
  }

  for (int i = 0; i < available.length; i++) {
    if (_currentIndex >= available.length) {
      _currentIndex = 0;
    }

    final activity = available[_currentIndex];
    _currentIndex++;

    if (!funDirector.isRepeated(activity)) {
      funDirector.register(activity);
      return activity;
   }
   }

  final activity = available.first;
  funDirector.register(activity);

  return activity;
 }

void reset() {
  _currentIndex = 0;
  funDirector.reset();
}
}