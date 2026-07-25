import 'dart:math';

class IdService {
  IdService._();

  static final Random _random = Random();

  static const String _characters =
      'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';

  static String generate({
    int length = 12,
  }) {
    return List.generate(
      length,
      (_) => _characters[
          _random.nextInt(_characters.length)],
    ).join();
  }
}