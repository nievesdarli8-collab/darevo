class CategoryEngine {
  const CategoryEngine();

  String getCategoryName(String id) {
    switch (id) {
      case "icebreaker":
        return "Rompehielos";

      case "fun":
        return "Diversión";

      case "challenge":
        return "Retos";

      case "couple":
        return "Parejas";

      case "party":
        return "Fiesta";

      case "strategy":
        return "Estrategia";

      default:
        return "General";
    }
  }
}