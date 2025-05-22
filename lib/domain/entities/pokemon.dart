import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon.freezed.dart';

@freezed
class Pokemon with _$Pokemon {
  const factory Pokemon({
    required int id,
    required String name,
    required String imageUrl,
    required int height,
    required int weight,
    required List<String> types,
    @Default(false) bool isCaptured,
  }) = _Pokemon;
}