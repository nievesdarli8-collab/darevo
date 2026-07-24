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
    ),
    Activity(
      id: 'A002',
      title: 'Pregunta rápida',
      description: 'Responde antes de 5 segundos.',
    ),
    Activity(
      id: 'A003',
      title: 'Mini reto',
      description: 'Cumple un pequeño desafío.',
    ),
  ];

  List<Activity> get activities =>
      List.unmodifiable(_activities);
}