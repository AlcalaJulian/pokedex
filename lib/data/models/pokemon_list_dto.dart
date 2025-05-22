import 'package:freezed_annotation/freezed_annotation.dart';
import 'pokemon_summary_dto.dart';

part 'pokemon_list_dto.g.dart';

@JsonSerializable()
class PokemonListDto {
  final List<PokemonSummaryDto> results;

  PokemonListDto({required this.results});

  factory PokemonListDto.fromJson(Map<String, dynamic> json) =>
      _$PokemonListDtoFromJson(json);
}
