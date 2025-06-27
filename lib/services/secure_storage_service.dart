import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageService {
  final FlutterSecureStorage _storage = const FlutterSecureStorage();

  /// Save a value securely
  Future<void> write(String key, String value) async {
    await _storage.write(key: key, value: value);
  }

  /// Read a value securely
  Future<String?> read(String key) async {
    return await _storage.read(key: key);
  }

  /// Delete a value securely
  Future<void> delete(String key) async {
    await _storage.delete(key: key);
  }

  /// Clear all secure storage (use carefully)
  Future<void> clearAll() async {
    await _storage.deleteAll();
  }
}
