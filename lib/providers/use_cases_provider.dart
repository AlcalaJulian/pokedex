import 'package:flutter_pokedex/domain/entities/pokemon.dart';
import 'package:flutter_pokedex/domain/use_cases/get_captured_pokemons_use_case.dart';
import 'package:flutter_pokedex/domain/use_cases/get_first_generation_use_case.dart';
import 'package:flutter_pokedex/domain/use_cases/get_pokemon_detail_use_case.dart';
import 'package:flutter_pokedex/domain/use_cases/toggle_captured_pokemon_use_case.dart';
import 'package:flutter_pokedex/providers/datasources_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final getFirstGenProvider = Provider<GetFirstGenerationUseCase>(
  (ref) => GetFirstGenerationUseCase(ref.read(pokemonRepositoryProvider)),
);

final getDetailProvider = Provider<GetPokemonDetailUseCase>(
  (ref) => GetPokemonDetailUseCase(ref.read(pokemonRepositoryProvider)),
);

final getCapturedListProvider = Provider<GetCapturedPokemonsUseCase>(
  (ref) => GetCapturedPokemonsUseCase(ref.read(pokemonRepositoryProvider)),
);
final capturedPokemonsProvider = FutureProvider<List<Pokemon>>((ref) {
  final useCase = ref.read(getCapturedListProvider);
  return useCase(); 
});
final toggleCapturedProvider = Provider<ToggleCapturedPokemonUseCase>(
  (ref) => ToggleCapturedPokemonUseCase(ref.read(pokemonRepositoryProvider)),
);
