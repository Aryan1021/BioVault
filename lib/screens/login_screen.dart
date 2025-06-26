import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.fingerprint, size: 80, color: Colors.deepPurple),
                const SizedBox(height: 16),
                const Text(
                  'Welcome to BioVault',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 32),
                const TextField(
                  decoration: InputDecoration(labelText: 'Email'),
                ),
                const SizedBox(height: 16),
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(labelText: 'Password'),
                ),
                const SizedBox(height: 24),
                ElevatedButton(
                  onPressed: () {
                    // TODO: add login logic
                  },
                  child: const Text('Login'),
                ),
                const SizedBox(height: 32),
                const Text('or'),
                const SizedBox(height: 16),
                OutlinedButton.icon(
                  onPressed: () {
                    // TODO: trigger biometric auth
                  },
                  icon: const Icon(Icons.fingerprint),
                  label: const Text('Login with Biometrics'),
                ),
                const SizedBox(height: 12),
                const Text(
                  'Use your fingerprint or face to login securely',
                  style: TextStyle(color: Colors.grey),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
