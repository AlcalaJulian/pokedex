import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_pokedex/domain/entities/pokemon.dart';
import 'package:flutter_pokedex/domain/use_cases/get_first_generation_use_case.dart';
import 'pokemon_list_view_state.dart';

class PokemonListViewModel extends StateNotifier<PokemonListViewState> {
  final GetFirstGenerationUseCase _getFirstGen;
  List<Pokemon> _cache = [];

  PokemonListViewModel(this._getFirstGen)
      : super(const PokemonListViewState.loading()) {
    _initialize();
  }

  Future<void> _initialize() async {
    try {
      final all = await _getFirstGen();
      _cache = all;
      state = all.isEmpty
          ? const PokemonListViewState.empty()
          : PokemonListViewState.success(all);
    } catch (e) {
      state = PokemonListViewState.error(e.toString());
    }
  }

  void onQueryChanged(String query) {
    search(query);
  }

  Future<void> search(String query) async {
    state = const PokemonListViewState.loading();
    try {
      final results = query.isEmpty
          ? _cache
          : _cache.where((p) => p.name.contains(query)).toList();

      if (results.isEmpty) {
        state = const PokemonListViewState.empty();
      } else {
        state = PokemonListViewState.success(results);
      }
    } catch (e) {
      state = PokemonListViewState.error(e.toString());
    }
  }
}
