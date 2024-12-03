import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// The Home details view
class SettingsScreen extends StatelessWidget {
  /// Constructs a [SettingsScreen]
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings Screen')),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () => context.go('/home'),
              child: const Text('Go back to the Home Screen'),
            ),
            ElevatedButton(
              onPressed: () => context.go('/details'),
              child: const Text('Go to the Detail Screen'),
            ),
          ],
        ),
      ),
    );
  }
}