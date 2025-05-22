import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_pokedex/domain/entities/pokemon.dart';
import 'package:flutter_pokedex/domain/use_cases/toggle_captured_pokemon_use_case.dart';
import 'package:flutter_pokedex/providers/captured_pokemons_provider.dart';
import 'pokemon_captured_list_view_state.dart';

class PokemonCapturedListViewModel
    extends StateNotifier<PokemonCapturedListViewState> {
  PokemonCapturedListViewModel(
    this._capturedNotifier,
    this._toggleCaptured,
  ) : super(const PokemonCapturedListViewState.loading()) {
    _sync();
  }

  final CapturedNotifier _capturedNotifier;
  final ToggleCapturedPokemonUseCase _toggleCaptured;

  String? _filterType;
  bool _sortAsc = false;

  String? get filterType => _filterType;
  bool get sortAsc => _sortAsc;

  void setFilterType(String? type) {
    _filterType = type;
    _sync();
  }

  void toggleSort() {
    _sortAsc = !_sortAsc;
    _sync();
  }

  Future<void> reload() async {
    await _capturedNotifier.reload();
    _sync();
  }

  Future<void> toggle(Pokemon p) async {
    await _toggleCaptured(p);
    await _capturedNotifier.reload();
    _sync();
  }

  Future<void> clear() async {
    for (final p in _capturedNotifier.state) {
      await _toggleCaptured(p);
    }
    await _capturedNotifier.reload();
    _sync();
  }

  void _sync() {
    final originalList = _capturedNotifier.state;

    if (originalList.isEmpty) {
      state = const PokemonCapturedListViewState.empty();
      return;
    }

    List<Pokemon> filteredList = _filterType == null
        ? [...originalList]
        : originalList.where((p) => p.types.contains(_filterType)).toList();

    filteredList.sort((a, b) =>
        _sortAsc ? a.name.compareTo(b.name) : a.id.compareTo(b.id));

    state = filteredList.isEmpty
        ? const PokemonCapturedListViewState.empty()
        : PokemonCapturedListViewState.success(filteredList);
  }
}
