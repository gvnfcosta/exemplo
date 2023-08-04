import 'package:exemplo/managers/session_manager.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.I;

void configureDependencies() {
  GetIt.I.registerSingleton(SessionManager());

  //GetIt.I.registerLazySingleton(() => SessionManager());

  //GetIt.I.registerFactory(() => SessionManager());
}
