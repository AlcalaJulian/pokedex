// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_detail_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonDetailDtoImpl _$$PokemonDetailDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$PokemonDetailDtoImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      height: (json['height'] as num).toInt(),
      weight: (json['weight'] as num).toInt(),
      sprites: Sprites.fromJson(json['sprites'] as Map<String, dynamic>),
      types: (json['types'] as List<dynamic>)
          .map((e) => TypeSlot.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PokemonDetailDtoImplToJson(
        _$PokemonDetailDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'height': instance.height,
      'weight': instance.weight,
      'sprites': instance.sprites,
      'types': instance.types,
    };

_$SpritesImpl _$$SpritesImplFromJson(Map<String, dynamic> json) =>
    _$SpritesImpl(
      other: OtherSprites.fromJson(json['other'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SpritesImplToJson(_$SpritesImpl instance) =>
    <String, dynamic>{
      'other': instance.other,
    };

_$OtherSpritesImpl _$$OtherSpritesImplFromJson(Map<String, dynamic> json) =>
    _$OtherSpritesImpl(
      officialArtwork: OfficialArtwork.fromJson(
          json['official-artwork'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OtherSpritesImplToJson(_$OtherSpritesImpl instance) =>
    <String, dynamic>{
      'official-artwork': instance.officialArtwork,
    };

_$OfficialArtworkImpl _$$OfficialArtworkImplFromJson(
        Map<String, dynamic> json) =>
    _$OfficialArtworkImpl(
      frontDefault: json['front_default'] as String,
    );

Map<String, dynamic> _$$OfficialArtworkImplToJson(
        _$OfficialArtworkImpl instance) =>
    <String, dynamic>{
      'front_default': instance.frontDefault,
    };

_$TypeSlotImpl _$$TypeSlotImplFromJson(Map<String, dynamic> json) =>
    _$TypeSlotImpl(
      slot: (json['slot'] as num).toInt(),
      type: TypeInfo.fromJson(json['type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TypeSlotImplToJson(_$TypeSlotImpl instance) =>
    <String, dynamic>{
      'slot': instance.slot,
      'type': instance.type,
    };

_$TypeInfoImpl _$$TypeInfoImplFromJson(Map<String, dynamic> json) =>
    _$TypeInfoImpl(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$TypeInfoImplToJson(_$TypeInfoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };
