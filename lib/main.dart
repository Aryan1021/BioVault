import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(const BioVaultApp());
}

class BioVaultApp extends StatelessWidget {
  const BioVaultApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BioVault',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LoginScreen(),
    );
  }
}
