import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter_pokedex/presentation/pokemon_detail/widgets/pokemon_detail_capture_button.dart';
import 'package:flutter_pokedex/presentation/pokemon_detail/widgets/pokemon_detail_header_image.dart';
import 'package:flutter_pokedex/presentation/pokemon_detail/widgets/pokemon_detail_stats_row.dart';
import 'package:flutter_pokedex/presentation/pokemon_detail/widgets/pokemon_detail_type_chip.dart';
import '../../../domain/entities/pokemon.dart';
import 'package:app_localizations/app_localizations.dart';
import '../pokemon_detail_view_model.dart';

class PokemonDetailBody extends StatelessWidget {
  const PokemonDetailBody({
    super.key,
    required this.pokemon,
    required this.viewModel,
    required this.localizations,
    required this.capturedList,
  });

  final Pokemon pokemon;
  final PokemonDetailViewModel viewModel;
  final AppLocalizations localizations;
  final List<Pokemon> capturedList;

  @override
  Widget build(BuildContext context) {
    final baseColor = Theme.of(context).colorScheme.primary;

    final gradient = LinearGradient(
      colors: [baseColor.withOpacity(0.6), baseColor],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    );

    return SingleChildScrollView(
      child: SizedBox(
        height: 600,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            PokemonDetailHeaderImage(
              imageUrl: pokemon.imageUrl,
              pokemonId: pokemon.id,
              gradient: gradient,
            ),
            Positioned(
              top: 220,
              left: 16,
              right: 16,
              child: FadeInUp(
                duration: const Duration(milliseconds: 500),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  elevation: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Text(
                          '#${pokemon.id.toString().padLeft(3, '0')}  ${pokemon.name.toUpperCase()}',
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 12),
                        PokemonDetailStatsRow(
                          height: pokemon.height,
                          weight: pokemon.weight,
                          localizations: localizations,
                        ),
                        const SizedBox(height: 16),
                        PokemonDetailTypeChip(types: pokemon.types),
                        const SizedBox(height: 24),
                        PokemonDetailCaptureButton(
                          pokemon: pokemon,
                          capturedList: capturedList,
                          viewModel: viewModel,
                          localizations: localizations,
                          color: baseColor,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
