// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_detail_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PokemonDetailHiveModelAdapter
    extends TypeAdapter<PokemonDetailHiveModel> {
  @override
  final int typeId = 1;

  @override
  PokemonDetailHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PokemonDetailHiveModel(
      id: fields[0] as int,
      name: fields[1] as String,
      height: fields[2] as int,
      weight: fields[3] as int,
      imageUrl: fields[4] as String,
      types: (fields[5] as List).cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, PokemonDetailHiveModel obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.height)
      ..writeByte(3)
      ..write(obj.weight)
      ..writeByte(4)
      ..write(obj.imageUrl)
      ..writeByte(5)
      ..write(obj.types);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PokemonDetailHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
