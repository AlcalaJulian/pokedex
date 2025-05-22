import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_pokedex/domain/entities/pokemon.dart';
import 'package:shimmer/shimmer.dart';

class PokemonCard extends StatelessWidget {
  const PokemonCard({
    super.key,
    required this.pokemon,
    required this.onTap,
    required this.typeColors,
  });

  final Pokemon pokemon;
  final VoidCallback onTap;
  final Map<String, Color> typeColors;

  @override
  Widget build(BuildContext context) {
    final primaryType = pokemon.types.first;
    final baseColor = typeColors[primaryType] ?? Colors.grey;
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: Column(
                  children: [
                    Row(
                      children: [
                        _chip('#${pokemon.id.toString().padLeft(3, '0')}',
                            context, isNumber: true),
                        const Spacer(),
                        _chip(primaryType.toUpperCase(), context),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Text(pokemon.name,
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(color: Colors.white)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _chip(String text, BuildContext context, {bool isNumber = false}) {
    return Container(
      width: isNumber ? null : 65,
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
      decoration: BoxDecoration(
        color: Colors.black26,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Text(
          text,
          style: isNumber
              ? Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(color: Colors.white)
              : Theme.of(context)
                  .textTheme
                  .labelSmall
                  ?.copyWith(color: Colors.white),
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
