import 'package:flutter_pokedex/domain/entities/pokemon.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'pokemon_detail_view_state.freezed.dart';

@freezed
class PokemonDetailViewState with _$PokemonDetailViewState {
  const factory PokemonDetailViewState.loading() = _Loading;

  const factory PokemonDetailViewState.error(String message) = _Error;

  const factory PokemonDetailViewState.success(Pokemon pokemon) =
      _Success;
}
