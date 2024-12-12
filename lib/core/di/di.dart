import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // app prefs instance
  // final sharedPrefs = await SharedPreferences.getInstance();
  //
  // sl.registerLazySingleton<SharedPreferences>(() => sharedPrefs);
  //
  // sl.registerLazySingleton<AppPreferences>(() => AppPreferences(sl()));
  //
  // // Network Info
  // sl.registerLazySingleton<NetworkInfo>(
  //         () => NetworkInfoImpl(InternetConnectionChecker()));

  // DataSources
  // sl.registerLazySingleton<AuthDataSource>(() => AuthDataSource());

  // Repositories
  // sl.registerLazySingleton<FirebaseRepository>(() => AuthRepository(sl(), sl()));

  // UseCases
  // sl.registerLazySingleton<LoginUseCase>(() => LoginUseCase(sl()));

  // Bloc
  // sl.registerFactory(() => AuthBloc(sl(), sl(), sl()));

  // sl.registerLazySingleton<Login>(() => Login(authRepository: getIt.get<AuthRepo>(), messagesRepository: getIt.get<MessagesRepo>()));
  // sl.registerLazySingleton<Logout>(() => Logout(authRepository: getIt.get<AuthRepo>(), messagesRepository: getIt.get<MessagesRepo>()));

}