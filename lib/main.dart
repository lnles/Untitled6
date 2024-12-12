import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:provider/provider.dart';
import 'package:untitled6/features/home/provider/home_provider.dart';

import 'core/di/di.dart';
import 'core/router/router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();
  await Hive.initFlutter();
  await Hive.openBox('user');
  await Hive.openBox('settings');
  runApp(const App());
}

class App extends StatelessWidget {
  static final scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();
  static final navigatorKey = GlobalKey<NavigatorState>();

  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    initWithContext(context);
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HomeProvider()),
      ],
      child: MaterialApp.router(
        scaffoldMessengerKey: scaffoldMessengerKey,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink),
          useMaterial3: true,
        ),
        routerConfig: router,
      ),
    );
  }
}

Future<void> initWithContext(BuildContext context) async {
  ScreenUtil.init(context);
  if (kDebugMode) {
    Animate.restartOnHotReload = true;
  }
}
