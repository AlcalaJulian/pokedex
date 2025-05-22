import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:shimmer/shimmer.dart';
import '../../../domain/entities/pokemon.dart';
import '../../theme/pokemon_type_colors.dart';

class PokemonCapturedCard extends StatelessWidget {
  const PokemonCapturedCard({
    super.key,
    required this.pokemon,
    required this.onTap,
    required this.onToggle,
  });

  final Pokemon pokemon;
  final VoidCallback onTap;
  final VoidCallback onToggle;

  @override
  Widget build(BuildContext context) {
    final baseColor = pokemonTypeColors[pokemon.types.first] ?? Colors.grey;
    final gradient = LinearGradient(
      colors: [baseColor.withOpacity(0.7), baseColor],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    );

    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        clipBehavior: Clip.hardEdge,
        child: Container(
          decoration: BoxDecoration(gradient: gradient),
          child: Column(
            children: [
              Expanded(
                child: Hero(
                  tag: 'pokemon-${pokemon.id}',
                  child: CachedNetworkImage(
                    imageUrl: pokemon.imageUrl,
                    fit: BoxFit.contain,
                    placeholder: (_, __) => Shimmer.fromColors(
                      baseColor: Colors.grey[300]!,
                      highlightColor: Colors.grey[100]!,
                      child: Container(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(6),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _chip('#${pokemon.id.toString().padLeft(3, '0')}'),
                        const SizedBox(
                          width: 5,
                        ),
                        _chip(pokemon.types.first.toUpperCase()),
                      ],
                    ),
                    Text(
                      pokemon.name.toUpperCase(),
                      style: const TextStyle(color: Colors.white, fontSize: 14),
                      overflow: TextOverflow.ellipsis,
                    ),
                    IconButton(
                      icon: const Icon(Icons.star, color: Colors.white),
                      onPressed: onToggle,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _chip(String text) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
        decoration: BoxDecoration(
          color: Colors.black26,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          text,
          style: const TextStyle(color: Colors.white, fontSize: 12),
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
