import 'dart:math';

class IdGenerator {
  static final Random _random = Random();

  static String roomCode() {
    const chars = 'ABCDEFGHJKLMNPQRSTUVWXYZ123456789';
    return List.generate(
      6,
      (_) => chars[_random.nextInt(chars.length)],
    ).join();
  }
}