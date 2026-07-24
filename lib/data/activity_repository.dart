import '../models/activity.dart';

class ActivityRepository {
  ActivityRepository._();

  static final ActivityRepository instance =
      ActivityRepository._();

  final List<Activity> _activities = [
    Activity(
      id: 'A001',
      title: 'Presentación',
      description: 'Cada jugador dice su nombre y algo curioso.',
      type: ActivityType.event,
      minPlayers: 2,
      maxPlayers: 12,
      durationSeconds: 30,
      intensity: 1,
      requiresConsent: false,
    ),
    Activity(
      id: 'A002',
      title: 'Pregunta rápida',
      description: 'Responde antes de 5 segundos.',
      type: ActivityType.trivia,
      minPlayers: 2,
      maxPlayers: 12,
      durationSeconds: 5,
      intensity: 2,
      requiresConsent: false,
    ),
    Activity(
      id: 'A003',
      title: 'Mini reto',
      description: 'Cumple un pequeño desafío.',
      type: ActivityType.challenge,
      minPlayers: 2,
      maxPlayers: 12,
      durationSeconds: 45,
      intensity: 3,
      requiresConsent: true,
    ),
  ];

  List<Activity> get activities =>
      List.unmodifiable(_activities);
}