import 'package:local_auth/local_auth.dart';

class BiometricAuthService {
  final LocalAuthentication _auth = LocalAuthentication();

  /// Check if biometrics are available and supported
  Future<bool> isBiometricAvailable() async {
    try {
      return await _auth.canCheckBiometrics && await _auth.isDeviceSupported();
    } catch (e) {
      return false;
    }
  }

  /// Authenticate the user with biometrics
  Future<bool> authenticate() async {
    try {
      return await _auth.authenticate(
        localizedReason: 'Scan your fingerprint or face to login',
        options: const AuthenticationOptions(
          stickyAuth: true,
          biometricOnly: true,
        ),
      );
    } catch (e) {
      return false;
    }
  }

  /// Get available biometric types (optional)
  Future<List<BiometricType>> getAvailableBiometrics() async {
    try {
      return await _auth.getAvailableBiometrics();
    } catch (e) {
      return <BiometricType>[];
    }
  }
}
