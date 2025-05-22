import 'package:flutter/material.dart';
import 'package:flutter_pokedex/presentation/pokemon_captured_list/widgets/pokemon_captured_card.dart';
import '../../../domain/entities/pokemon.dart';

class PokemonCapturedGrid extends StatelessWidget {
  const PokemonCapturedGrid({
    super.key,
    required this.pokemons,
    required this.onTapPokemon,
    required this.onToggleCapture,
  });

  final List<Pokemon> pokemons;
  final ValueChanged<int> onTapPokemon;
  final ValueChanged<Pokemon> onToggleCapture;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(8),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: .75,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
      ),
      itemCount: pokemons.length,
      itemBuilder: (_, i) {
        final pokemon = pokemons[i];
        return PokemonCapturedCard(
          pokemon: pokemon,
          onTap: () => onTapPokemon(pokemon.id),
          onToggle: () => onToggleCapture(pokemon),
        );
      },
    );
  }
}
