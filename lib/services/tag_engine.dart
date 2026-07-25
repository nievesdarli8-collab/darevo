class TagEngine {
  const TagEngine();

  bool hasTag(List<String> tags, String tag) {
    return tags.contains(tag);
  }

  bool hasAnyTag(List<String> tags, List<String> searchTags) {
    for (final tag in searchTags) {
      if (tags.contains(tag)) {
        return true;
      }
    }
    return false;
  }

  bool hasAllTags(List<String> tags, List<String> searchTags) {
    for (final tag in searchTags) {
      if (!tags.contains(tag)) {
        return false;
      }
    }
    return true;
  }
}