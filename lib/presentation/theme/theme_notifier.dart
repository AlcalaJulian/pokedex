import 'package:flutter/material.dart';
import 'package:flutter_pokedex/providers/captured_pokemons_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_pokedex/domain/entities/pokemon.dart';
import 'pokemon_type_colors.dart';

final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, ThemeData>(
  (ref) {
  final capturedList = ref.watch(capturedPokemonsNotifierProvider);
  return ThemeNotifier(capturedList);
  },
);

class ThemeNotifier extends StateNotifier<ThemeData> {
  ThemeNotifier(List<Pokemon> captured) : super(_buildTheme(captured));

  void updateCaptured(List<Pokemon> captured) {
    state = _buildTheme(captured);
  }

  static ThemeData _buildTheme(List<Pokemon> captured) {
    if (captured.isEmpty) return _defaultTheme;
    final freq = <String,int>{};
    for (final p in captured) {
      for (final t in p.types) {
        freq[t] = (freq[t] ?? 0) + 1;
      }
    }
    final maxCount = freq.values.fold<int>(0, (a,b) => a>b?a:b);
    final majors = freq.entries.where((e) => e.value == maxCount).map((e)=>e.key).toList();
    final colorKey = (majors.length == 1 ? majors.first : null);
    final primary = colorKey != null 
        ? (pokemonTypeColors[colorKey] ?? _defaultPrimary)
        : _defaultPrimary;

    return ThemeData(
      primaryColor: primary,
      colorScheme: ColorScheme.fromSeed(seedColor: primary),
      appBarTheme: AppBarTheme(backgroundColor: primary),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(backgroundColor: primary),
      ),
    );
  }

  static const Color _defaultPrimary = Color(0xFFCC0000);
  static final ThemeData _defaultTheme = ThemeData(
    primaryColor: _defaultPrimary,
    colorScheme: ColorScheme.fromSeed(seedColor: _defaultPrimary),
    appBarTheme: const AppBarTheme(backgroundColor: _defaultPrimary),
  );
}
