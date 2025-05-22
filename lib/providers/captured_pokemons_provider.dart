import 'package:flutter_pokedex/providers/use_cases_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_pokedex/domain/entities/pokemon.dart';
import 'package:flutter_pokedex/domain/use_cases/get_captured_pokemons_use_case.dart';

class CapturedNotifier extends StateNotifier<List<Pokemon>> {
  CapturedNotifier(this._getCaptured) : super([]) {
    _load();
  }

  final GetCapturedPokemonsUseCase _getCaptured;

  Future<void> _load() async {
    try {
      final list = await _getCaptured();
      state = list;
    } catch (_) {
      state = [];
    }
  }

  Future<void> reload() => _load();
}

final capturedPokemonsNotifierProvider =
    StateNotifierProvider<CapturedNotifier, List<Pokemon>>((ref) {
  final useCase = ref.read(getCapturedListProvider);
  return CapturedNotifier(useCase);
});
