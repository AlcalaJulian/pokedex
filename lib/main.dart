import 'package:app_localizations/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pokedex/data/datasources/pokemon_captured_local_datasource.dart';
import 'package:flutter_pokedex/data/models/pokemon_detail_hive_model.dart';
import 'package:flutter_pokedex/domain/entities/pokemon.dart';
import 'package:flutter_pokedex/providers/datasources_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:navigation/module.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'app_router_config.dart';
import 'presentation/theme/theme_notifier.dart';
import 'providers/use_cases_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();

  Hive.registerAdapter(PokemonDetailHiveModelAdapter()); 
  final localDs = CapturedLocalDatasource();
  await localDs.init();

  registerNavigationModule();
  configureAppRouter();

  runApp(
    ProviderScope(
      overrides: [
        capturedLocalDatasourceProvider.overrideWithValue(localDs),
      ],
      child: const PokedexApp(),
    ),
  );
}

class PokedexApp extends ConsumerWidget {
  const PokedexApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeNotifierProvider);

    ref.listen<AsyncValue<List<Pokemon>>>(capturedPokemonsProvider, (_, next) {
      next.whenData((list) {
        ref.read(themeNotifierProvider.notifier).updateCaptured(list);
      });
    });

    return MaterialApp.router(
            localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      localeResolutionCallback: (locale, supportedLocales) {
        if (locale == null) return supportedLocales.first;
        for (final supportedLocale in supportedLocales) {
          if (supportedLocale.languageCode == locale.languageCode) {
            return supportedLocale;
          }
        }
        return supportedLocales.first;
      },
      debugShowCheckedModeBanner: false,
      title: 'Flutter Pokédex',
      theme: theme,
      routerConfig: appRouter,
    );
  }
}
