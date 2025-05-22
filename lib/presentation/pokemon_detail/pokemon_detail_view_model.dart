import 'package:flutter_pokedex/domain/use_cases/get_pokemon_detail_use_case.dart';
import 'package:flutter_pokedex/domain/use_cases/toggle_captured_pokemon_use_case.dart';
import 'package:flutter_pokedex/presentation/pokemon_detail/pokemon_detail_view_state.dart';
import 'package:flutter_pokedex/providers/captured_pokemons_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PokemonDetailViewModel extends StateNotifier<PokemonDetailViewState> {
  final Ref _ref; 
  final GetPokemonDetailUseCase _getDetail;
  final ToggleCapturedPokemonUseCase _toggleCaptured;
  final int _pokemonId;

  PokemonDetailViewModel({
    required Ref ref, 
    required GetPokemonDetailUseCase getPokemonDetailUseCase,
    required ToggleCapturedPokemonUseCase toggleCapturedPokemonUseCase,
    required int pokemonId,
  })  : _ref = ref,
        _getDetail = getPokemonDetailUseCase,
        _toggleCaptured = toggleCapturedPokemonUseCase,
        _pokemonId = pokemonId,
        super(const PokemonDetailViewState.loading()) {
    _loadPokemon();
  }

  Future<void> _loadPokemon() async {
    state = const PokemonDetailViewState.loading();
    try {
      final pokemon = await _getDetail(_pokemonId);
      state = PokemonDetailViewState.success(pokemon);
    } catch (e) {
      state = PokemonDetailViewState.error(e.toString());
    }
  }

  Future<void> toggleCapture() async {
    state.whenOrNull(
      success: (pokemon) async {
        try {
          await _toggleCaptured(pokemon);
          await _ref.read(capturedPokemonsNotifierProvider.notifier).reload();
          final updatedList =
              _ref.read(capturedPokemonsNotifierProvider.notifier).state;
          final isNowCaptured = updatedList.any((p) => p.id == pokemon.id);

          final updated = pokemon.copyWith(isCaptured: isNowCaptured);
          state = PokemonDetailViewState.success(updated);
        } catch (e) {
          state = PokemonDetailViewState.success(pokemon);
        }
      },
    );
  }
}
