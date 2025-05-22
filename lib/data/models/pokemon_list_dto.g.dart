// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_list_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PokemonListDto _$PokemonListDtoFromJson(Map<String, dynamic> json) =>
    PokemonListDto(
      results: (json['results'] as List<dynamic>)
          .map((e) => PokemonSummaryDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PokemonListDtoToJson(PokemonListDto instance) =>
    <String, dynamic>{
      'results': instance.results,
    };
