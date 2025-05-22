import 'package:flutter_pokedex/data/datasources/pokemon_captured_local_datasource.dart';
import 'package:flutter_pokedex/data/models/pokemon_detail_hive_model.dart';

import '../../domain/entities/pokemon.dart';
import '../../domain/repositories/pokemon_repository.dart';
import '../datasources/pokeapi_remote_datasource.dart';
import '../models/pokemon_detail_dto.dart';

class PokemonRepositoryImpl implements PokemonRepository {
  final PokeApiRemoteDatasource _remote;
  final CapturedLocalDatasource _local;

  final Map<int, Pokemon> _cache = {};

  PokemonRepositoryImpl(this._remote, this._local);

  int _extractIdFromUrl(String url) {
    final uri = Uri.parse(url);
    final segments = uri.pathSegments.where((s) => s.isNotEmpty).toList();
    return int.parse(segments.last);
  }

  @override
  Future<List<Pokemon>> getFirstGeneration(
      {int limit = 151, int offset = 0}) async {
    if (_cache.length >= limit) {
      return _cache.values.toList()..sort((a, b) => a.id.compareTo(b.id));
    }

    final listDto = await _remote.getPokemonList(limit: limit, offset: offset);
    final summaries = listDto.results;

    final detailFutures = summaries.map((s) {
      final id = _extractIdFromUrl(s.url);
      return _remote.getPokemonDetails(id);
    });

    final details = await Future.wait(detailFutures);

    for (final PokemonDetailDto dto in details) {
      _cache[dto.id] = dto.toDomain();
    }

    return _cache.values.toList()..sort((a, b) => a.id.compareTo(b.id));
  }

  @override
  Future<Pokemon> getById(int id) async {
    if (_cache.containsKey(id)) return _cache[id]!;

    final dto = await _remote.getPokemonDetails(id);
    final pokemon = dto.toDomain();
    _cache[id] = pokemon;
    return pokemon;
  }

  @override
  Future<List<Pokemon>> getCaptured() async {
    final models = _local.getAll();

    for (final model in models) {
      _cache[model.id] = model.toDomain();
    }

    final list = models.map((model) => _cache[model.id]!).toList()
      ..sort((a, b) => a.id.compareTo(b.id));

    return list;
  }

  @override
  Future<void> toggleCaptured(Pokemon p) async {
    final contains = _local.contains(p.id);
    if (contains) {
      await _local.remove(p.id);
    } else {
      final dto = await _remote.getPokemonDetails(p.id);
      await _local.add(dto.toHiveModel());
    }
  }
}
