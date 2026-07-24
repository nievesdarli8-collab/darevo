/// ===========================================================
/// ACTIVITY MODEL
/// Representa cualquier actividad dentro de DAREVO.
/// ===========================================================

class Activity {
  final String id;
  final String title;
  final String description;

  const Activity({
    required this.id,
    required this.title,
    required this.description,
  });
}