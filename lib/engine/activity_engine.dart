import '../data/activity_repository.dart';
import '../models/activity.dart';

class ActivityEngine {
  ActivityEngine._();

  static final ActivityEngine instance =
      ActivityEngine._();

  final ActivityRepository repository =
      ActivityRepository.instance;

  int _currentIndex = 0;

  Activity? nextActivity() {
    if (repository.activities.isEmpty) {
      return null;
    }

    final activity =
        repository.activities[_currentIndex];

    _currentIndex++;

    if (_currentIndex >=
        repository.activities.length) {
      _currentIndex = 0;
    }

    return activity;
  }

  void reset() {
    _currentIndex = 0;
  }
}