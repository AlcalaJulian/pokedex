import 'package:flutter_pokedex/domain/entities/pokemon.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_detail_dto.freezed.dart';
part 'pokemon_detail_dto.g.dart';

@freezed
class PokemonDetailDto with _$PokemonDetailDto {
  const factory PokemonDetailDto({
    required int id,
    required String name,
    required int height,
    required int weight,
    required Sprites sprites,
    required List<TypeSlot> types,
  }) = _PokemonDetailDto;

  factory PokemonDetailDto.fromJson(Map<String, dynamic> json) =>
      _$PokemonDetailDtoFromJson(json);
}

@freezed
class Sprites with _$Sprites {
  const factory Sprites({
    @JsonKey(name: 'other') required OtherSprites other,
  }) = _Sprites;

  factory Sprites.fromJson(Map<String, dynamic> json) =>
      _$SpritesFromJson(json);
}

@freezed
class OtherSprites with _$OtherSprites {
  const factory OtherSprites({
    @JsonKey(name: 'official-artwork') required OfficialArtwork officialArtwork,
  }) = _OtherSprites;

  factory OtherSprites.fromJson(Map<String, dynamic> json) =>
      _$OtherSpritesFromJson(json);
}

@freezed
class OfficialArtwork with _$OfficialArtwork {
  const factory OfficialArtwork({
    @JsonKey(name: 'front_default') required String frontDefault,
  }) = _OfficialArtwork;

  factory OfficialArtwork.fromJson(Map<String, dynamic> json) =>
      _$OfficialArtworkFromJson(json);
}

@freezed
class TypeSlot with _$TypeSlot {
  const factory TypeSlot({
    required int slot,
    required TypeInfo type,
  }) = _TypeSlot;

  factory TypeSlot.fromJson(Map<String, dynamic> json) =>
      _$TypeSlotFromJson(json);
}

@freezed
class TypeInfo with _$TypeInfo {
  const factory TypeInfo({
    required String name,
    required String url,
  }) = _TypeInfo;

  factory TypeInfo.fromJson(Map<String, dynamic> json) =>
      _$TypeInfoFromJson(json);
}

extension PokemonDtoMapper on PokemonDetailDto {
  Pokemon toDomain() {
    return Pokemon(
      id: id,
      name: name,
      imageUrl: sprites.other.officialArtwork.frontDefault,
      height: height,
      weight: weight,
      types: types.map((t) => t.type.name).toList(),
    );
  }
}