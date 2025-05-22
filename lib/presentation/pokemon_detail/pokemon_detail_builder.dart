import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation/navigation.dart';
import 'package:flutter_pokedex/presentation/pokemon_detail/pokemon_detail_screen.dart';

class PokemonDetailBuilder {
  final int id;
  PokemonDetailBuilder({required this.id});

  Page<void> buildPage(BuildContext context, GoRouterState state) {
    final NavigationContract navigationContract = GetIt.I<NavigationContract>();

    return MaterialPage<void>(
      key: state.pageKey,
      child: PokemonDetailScreen(
        navigationContract: navigationContract,
        pokemonId: id,
      ),
    );
  }
}
