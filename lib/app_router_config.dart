import 'package:flutter/material.dart';
import 'package:flutter_pokedex/presentation/pokemon_captured_list/pokemon_captured_list_builder.dart';
import 'package:flutter_pokedex/presentation/pokemon_detail/pokemon_detail_builder.dart';
import 'package:flutter_pokedex/presentation/pokemon_list/pokemon_list_builder.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation/navigation.dart';
import 'package:get_it/get_it.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

final appRouter = GoRouter(
  navigatorKey: navigatorKey,
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      pageBuilder: (context, state) =>
          PokemonListBuilder().buildPage(context, state),
    ),
    GoRoute(
      path: '/detail/:id',
      pageBuilder: (context, state) {
        final idParam = state.pathParameters['id'];
        final pokemonId = int.tryParse(idParam ?? '') ?? 0;
        return PokemonDetailBuilder(id: pokemonId).buildPage(context, state);
      },
    ),
    GoRoute(
      path: '/captured',
      pageBuilder: (context, state) =>
          PokemonCapturedListBuilder().buildPage(context, state),
    ),
  ],
);

void configureAppRouter() {
  GetIt.I<NavigationContract>().setRouter(appRouter);
}
