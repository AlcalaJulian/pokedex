import 'package:flutter/material.dart';
import '../../../domain/entities/pokemon.dart';
import '../pokemon_detail_view_model.dart';
import 'package:app_localizations/app_localizations.dart';

class PokemonDetailCaptureButton extends StatelessWidget {
  const PokemonDetailCaptureButton({
    super.key,
    required this.pokemon,
    required this.capturedList,
    required this.viewModel,
    required this.localizations,
    required this.color,
  });

  final Pokemon pokemon;
  final List<Pokemon> capturedList;
  final PokemonDetailViewModel viewModel;
  final AppLocalizations localizations;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final isCaptured = capturedList.any((p) => p.id == pokemon.id);
    return ElevatedButton.icon(
      onPressed: viewModel.toggleCapture,
      icon: Icon(
        isCaptured ? Icons.star : Icons.star_border,
        color: Colors.white,
      ),
      label: Text(
        isCaptured
            ? localizations.translate('release')
            : localizations.translate('capture'),
        style: const TextStyle(fontSize: 16, color: Colors.white),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      ),
    );
  }
}
