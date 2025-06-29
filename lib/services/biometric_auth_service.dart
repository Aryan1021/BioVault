import 'package:local_auth/local_auth.dart';

class BiometricAuthService {
  final LocalAuthentication _localAuth = LocalAuthentication();

  Future<bool> isBiometricAvailable() async {
    try {
      final canAuthenticate = await _localAuth.canCheckBiometrics;
      final isDeviceSupported = await _localAuth.isDeviceSupported();
      print(
          "Biometrics available: $canAuthenticate, Device supported: $isDeviceSupported");
      return canAuthenticate && isDeviceSupported;
    } catch (e) {
      print("Biometric check failed: $e");
      return false;
    }
  }

  Future<bool> authenticate() async {
    try {
      final didAuthenticate = await _localAuth.authenticate(
        localizedReason: 'Scan your fingerprint to authenticate',
        options: const AuthenticationOptions(
          biometricOnly: true,
          stickyAuth: true,
          useErrorDialogs: true,
        ),
      );
      print("Authentication result: $didAuthenticate");
      return didAuthenticate;
    } catch (e) {
      print("Authentication error: $e");
      return false;
    }
  }
}