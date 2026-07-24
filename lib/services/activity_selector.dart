import '../models/activity.dart';

class ActivitySelector {
  const ActivitySelector();

  List<Activity> filterByPlayers(
    List<Activity> activities,
    int playerCount,
  ) {
    return activities.where((activity) {
      return playerCount >= activity.minPlayers &&
          playerCount <= activity.maxPlayers;
    }).toList();
  }
}