import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_pokedex/domain/entities/pokemon.dart';

part 'pokemon_captured_list_view_state.freezed.dart';

@freezed
class PokemonCapturedListViewState with _$PokemonCapturedListViewState {
  const factory PokemonCapturedListViewState.loading() = _Loading;
  const factory PokemonCapturedListViewState.empty()   = _Empty;
  const factory PokemonCapturedListViewState.error(String message) = _Error;
  const factory PokemonCapturedListViewState.success(List<Pokemon> pokemons) =
      _Success;
}
