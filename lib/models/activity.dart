/// ===========================================================
/// ACTIVITY MODEL
/// Modelo universal de actividades.
/// ===========================================================

enum ActivityType {
  truth,
  challenge,
  minigame,
  trivia,
  event,
  punishment,
  roulette,
}

class Activity {
  final String id;
  final String title;
  final String description;

  final ActivityType type;

  final int minPlayers;
  final int maxPlayers;

  final int durationSeconds;

  final int intensity;

  final bool requiresConsent;

  const Activity({
    required this.id,
    required this.title,
    required this.description,
    required this.type,
    required this.minPlayers,
    required this.maxPlayers,
    required this.durationSeconds,
    required this.intensity,
    required this.requiresConsent,
  });
}