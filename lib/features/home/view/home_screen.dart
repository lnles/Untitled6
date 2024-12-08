import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled6/core/extensions/extensions.dart';
import 'package:untitled6/features/home/provider/home_provider.dart';

class HomeScreen extends StatelessWidget {
  /// Constructs a [HomeScreen]
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<HomeProvider>(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen'), centerTitle: true),
      body: Center(
        child: ElevatedButton(
          onPressed: () => provider.increment(),
          child: Text('Log to Console ${provider.counter}'),
        ),
      ),
    );
  }
}