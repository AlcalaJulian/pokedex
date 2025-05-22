import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:shimmer/shimmer.dart';

class PokemonDetailHeaderImage extends StatelessWidget {
  const PokemonDetailHeaderImage({
    super.key,
    required this.imageUrl,
    required this.pokemonId,
    required this.gradient,
  });

  final String imageUrl;
  final int pokemonId;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: const BorderRadius.vertical(bottom: Radius.circular(32)),
      ),
      child: Center(
        child: Hero(
          tag: 'pokemon-$pokemonId',
          child: CachedNetworkImage(
            imageUrl: imageUrl,
            height: 180,
            placeholder: (_, __) => Shimmer.fromColors(
              baseColor: Colors.grey[300]!,
              highlightColor: Colors.grey[100]!,
              child: Container(height: 180, width: 180, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
