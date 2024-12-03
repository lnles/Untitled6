import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:untitled6/core/utils/snack_bar_utils.dart';

/// The Home details view
class DetailsScreen extends StatelessWidget {
  /// Constructs a [DetailsScreen]
  const DetailsScreen({super.key});

  /// Go to the Settings view
  void _goSettings(BuildContext context) async{
    final bool? result = await context.push<bool>('/settings');
    if(result ?? false) {
      SnackBarUtils.showSnackBar('Settings saved successfully');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Details Screen')),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton.icon(
              icon: const Icon(Icons.home),
              onPressed: () => context.go('/home'),
              label: const Text('Go back to the Home Screen'),
            ),
            ElevatedButton.icon(
              icon: const Icon(Icons.settings),
              onPressed: () => _goSettings(context),
              label: const Text('Go to the Settings Screen'),
            ),
            FilledButton(
              onPressed: () => SnackBarUtils.showSnackBar('This is a snackbar'),
              child: const Text('Show Snackbar'),
            ),
            FilledButton.tonal(
              onPressed: () => SnackBarUtils.showSnackBar('This is a snackbar'),
              style: ButtonStyle(
                shape: WidgetStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                )),
              ),
              child: const Text('Show Snackbar'),
            )
            ,CupertinoButton(
              onPressed: () => SnackBarUtils.showSnackBar('This is a snackbar'),
              child: const Text('Show Snackbar'),
            ),
            CupertinoButton.filled(
              onPressed: () => SnackBarUtils.showSnackBar('This is a snackbar'),
              child: const Text('Show Snackbar'),
            )
          ],
        ),
      ),
    );
  }
}