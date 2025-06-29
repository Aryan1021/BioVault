import 'package:local_auth/local_auth.dart';

class BiometricAuthService {
  final LocalAuthentication _auth = LocalAuthentication();

  /// Check if biometric authentication is available and supported on device
  Future<bool> isBiometricAvailable() async {
    try {
      final canCheck = await _auth.canCheckBiometrics;
      final isSupported = await _auth.isDeviceSupported();
      return canCheck && isSupported;
    } catch (e) {
      print('Biometric availability check failed: $e');
      return false;
    }
  }

  /// Perform biometric authentication with fallback enabled
  Future<bool> authenticate() async {
    try {
      final authenticated = await _auth.authenticate(
        localizedReason: 'Please authenticate to login',
        options: const AuthenticationOptions(
          stickyAuth: true,
          biometricOnly: false, // Allow device PIN fallback here
        ),
      );
      return authenticated;
    } catch (e) {
      print('Biometric auth error: $e');
      return false;
    }
  }
}
