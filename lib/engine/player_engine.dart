/// ===========================================================
/// PLAYER ENGINE
/// Administra todos los jugadores de la partida.
/// ===========================================================

import '../models/player.dart';

class PlayerEngine {
  PlayerEngine._();

  static final PlayerEngine instance = PlayerEngine._();

  final List<Player> _players = [];

  List<Player> get players => List.unmodifiable(_players);

  int get totalPlayers => _players.length;

  bool get hasPlayers => _players.isNotEmpty;

  void addPlayer(Player player) {
    _players.add(player);
  }

  void removePlayer(String id) {
    _players.removeWhere((player) => player.id == id);
  }

  Player? getPlayer(String id) {
    try {
      return _players.firstWhere((player) => player.id == id);
    } catch (_) {
      return null;
    }
  }

  void clear() {
    _players.clear();
  }
}