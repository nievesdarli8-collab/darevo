/// ===========================================================
/// DAREVO ENGINE
/// Núcleo principal del juego
/// ===========================================================

class DarevoEngine {
  static final DarevoEngine _instance = DarevoEngine._internal();

  factory DarevoEngine() {
    return _instance;
  }

  DarevoEngine._internal();

  String version = "0.0.1 Pre-Alpha";

  bool initialized = false;

  void initialize() {
    initialized = true;
  }

  String getStatus() {
    return initialized
        ? "DAREVO Engine iniciado"
        : "DAREVO Engine detenido";
  }
}