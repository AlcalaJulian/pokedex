import 'package:flutter/material.dart';
import '../../../presentation/theme/pokemon_type_colors.dart';

class PokemonDetailTypeChip extends StatelessWidget {
  const PokemonDetailTypeChip({super.key, required this.types});

  final List<String> types;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      children: types
          .map(
            (type) => Chip(
              label: Text(type.toUpperCase(),
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold)),
              backgroundColor:
                  pokemonTypeColors[type]?.withOpacity(0.8) ?? Colors.black26,
            ),
          )
          .toList(),
    );
  }
}
