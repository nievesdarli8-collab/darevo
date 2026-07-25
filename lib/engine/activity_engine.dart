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

  int _currentIndex = 0;

  Activity? nextActivity({int playerCount = 2}) {
  final available = selector.filterByPlayers(
    repository.activities,
    playerCount,
  );

  if (available.isEmpty) {
    return null;
  }

  if (_currentIndex >= available.length) {
    _currentIndex = 0;
  }

  final activity = available[_currentIndex];

  _currentIndex++;

  return activity;
}