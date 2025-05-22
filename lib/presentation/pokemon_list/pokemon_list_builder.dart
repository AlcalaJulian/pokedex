import 'package:flutter/material.dart';
import 'package:flutter_pokedex/presentation/pokemon_list/pokemon_list_screen.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation/navigation.dart';

class PokemonListBuilder {
  PokemonListBuilder();

  Page<void> buildPage(BuildContext context, GoRouterState state) {
    final NavigationContract navigationContract = GetIt.I<NavigationContract>();
    return MaterialPage<void>(
      key: state.pageKey,
      child: PokemonListScreen(navigationContract: navigationContract),
    );
  }
}
