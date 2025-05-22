import 'package:flutter/material.dart';
import 'package:app_localizations/app_localizations.dart';

class PokemonDetailStatsRow extends StatelessWidget {
  const PokemonDetailStatsRow({
    super.key,
    required this.height,
    required this.weight,
    required this.localizations,
  });

  final int height, weight;
  final AppLocalizations localizations;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _Stat(label: localizations.translate('height'), value: '$height'),
        _Stat(label: localizations.translate('weight'), value: '$weight'),
      ],
    );
  }
}

class _Stat extends StatelessWidget {
  const _Stat({required this.label, required this.value});
  final String label, value;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(label, style: Theme.of(context).textTheme.bodyMedium),
        const SizedBox(height: 4),
        Text(value, style: Theme.of(context).textTheme.displayMedium),
      ],
    );
  }
}
