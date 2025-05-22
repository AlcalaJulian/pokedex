import 'package:flutter_pokedex/data/models/pokemon_detail_dto.dart';
import 'package:flutter_pokedex/domain/entities/pokemon.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'pokemon_detail_hive_model.g.dart';

@HiveType(typeId: 1)
class PokemonDetailHiveModel extends HiveObject {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final int height;
  @HiveField(3)
  final int weight;
  @HiveField(4)
  final String imageUrl;
  @HiveField(5)
  final List<String> types;

  PokemonDetailHiveModel({
    required this.id,
    required this.name,
    required this.height,
    required this.weight,
    required this.imageUrl,
    required this.types,
  });
}
extension PokemonDtoHiveMapper on PokemonDetailDto {
  PokemonDetailHiveModel toHiveModel() {
    return PokemonDetailHiveModel(
      id: id,
      name: name,
      height: height,
      weight: weight,
      imageUrl: sprites.other.officialArtwork.frontDefault,
      types: types.map((t) => t.type.name).toList(),
    );
  }
}

extension PokemonHiveMapper on PokemonDetailHiveModel {
  Pokemon toDomain() {
    return Pokemon(
      id: id,
      name: name,
      imageUrl: imageUrl,
      height: height,
      weight: weight,
      types: types,
    );
  }
}
