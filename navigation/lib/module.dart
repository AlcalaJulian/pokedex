import 'package:get_it/get_it.dart';
import 'package:navigation/navigation.dart';

final GetIt getIt = GetIt.instance;

void registerNavigationModule() {
  getIt.registerLazySingleton<NavigationContract>(() => Navigation());
}