/// ===========================================================
/// PLAYER MODEL
/// Representa un jugador dentro de una partida de DAREVO.
/// ===========================================================

class Player {
  final String id;
  String name;
  bool isHost;
  bool isReady;

  Player({
    required this.id,
    required this.name,
    this.isHost = false,
    this.isReady = false,
  });

  void setReady(bool value) {
    isReady = value;
  }

  @override
  String toString() {
    return 'Player(id: $id, name: $name, host: $isHost, ready: $isReady)';
  }
}