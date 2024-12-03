import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LikesScreen extends StatelessWidget {
  /// Constructs a [LikesScreen]
  const LikesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Likes Screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.push('/details'),
          child: const Text('Go to the Details view'),
        ),
      ),
    );
  }
}