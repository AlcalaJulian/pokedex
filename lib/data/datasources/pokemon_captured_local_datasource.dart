import 'package:flutter_pokedex/data/models/pokemon_detail_hive_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

class CapturedLocalDatasource {
  static const _boxName = 'pokemon_captured_details';
  late final Box<PokemonDetailHiveModel> _box;

  Future<void> init() async {
    _box = await Hive.openBox<PokemonDetailHiveModel>(_boxName);
  }

  List<PokemonDetailHiveModel> getAll() => _box.values.toList();

  Future<void> add(PokemonDetailHiveModel p) async => _box.put(p.id, p);

  Future<void> remove(int id) async => _box.delete(id);

  bool contains(int id) => _box.containsKey(id);

  PokemonDetailHiveModel? get(int id) => _box.get(id);
}
