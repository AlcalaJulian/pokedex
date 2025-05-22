import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_pokedex/domain/entities/pokemon.dart';

part 'pokemon_list_view_state.freezed.dart';

@freezed
class PokemonListViewState with _$PokemonListViewState {
  const factory PokemonListViewState.loading() = _Loading;

  const factory PokemonListViewState.success(List<Pokemon> pokemons) = _Success;

  const factory PokemonListViewState.empty() = _Empty;

  const factory PokemonListViewState.error(String message) = _Error;
}
