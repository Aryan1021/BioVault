import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageService {
  final FlutterSecureStorage _storage = const FlutterSecureStorage();

  /// Save a value securely (stored encrypted on device)
  Future<void> write(String key, String value) async {
    await _storage.write(key: key, value: value);
  }

  /// Read a stored value
  Future<String?> read(String key) async {
    return await _storage.read(key: key);
  }

  /// Delete a stored value
  Future<void> delete(String key) async {
    await _storage.delete(key: key);
  }

  /// Clear all stored data (use carefully)
  Future<void> clearAll() async {
    await _storage.deleteAll();
  }
}
