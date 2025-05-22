import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter_pokedex/domain/entities/pokemon.dart';
import 'package:flutter_pokedex/presentation/pokemon_list/pokemon_list_widgets/pokemon_card.dart';
import 'package:navigation/navigation.dart';

class PokemonGrid extends StatelessWidget {
  const PokemonGrid({
    super.key,
    required this.pokemons,
    required this.navigationContract,
    required this.typeColors,
  });

  final List<Pokemon> pokemons;
  final NavigationContract navigationContract;
  final Map<String, Color> typeColors;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, childAspectRatio: .75),
      itemCount: pokemons.length,
      itemBuilder: (_, i) => FadeInUp(
        duration: const Duration(milliseconds: 300),
        delay: Duration(milliseconds: i * 50),
        child: PokemonCard(
          pokemon: pokemons[i],
          onTap: () =>
              navigationContract.pushTo('/detail/${pokemons[i].id}'),
          typeColors: typeColors,
        ),
      ),
    );
  }
}
