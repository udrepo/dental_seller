abstract class StorageService {
  /// Generic method to get data
  dynamic get(String key);

  /// Generic method to save data
  Future<void> set(String key, dynamic value);

  /// Remove specific key
  Future<void> remove(String key);

  /// Clear all data (useful for logout)
  Future<void> clear();
  
  /// Check if key exists
  bool has(String key);
}