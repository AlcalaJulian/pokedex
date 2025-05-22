import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_summary_dto.freezed.dart';
part 'pokemon_summary_dto.g.dart';

@freezed
class PokemonSummaryDto with _$PokemonSummaryDto {
  const factory PokemonSummaryDto({
    required String name,
    required String url,
  }) = _PokemonSummaryDto;

  factory PokemonSummaryDto.fromJson(Map<String, dynamic> json) =>
      _$PokemonSummaryDtoFromJson(json);
}
