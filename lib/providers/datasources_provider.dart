import 'package:dio/dio.dart';
import 'package:flutter_pokedex/data/datasources/pokeapi_remote_datasource.dart';
import 'package:flutter_pokedex/data/datasources/pokemon_captured_local_datasource.dart';
import 'package:flutter_pokedex/data/repositories_impl/pokemon_repository_impl.dart';
import 'package:flutter_pokedex/domain/repositories/pokemon_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dioProvider = Provider<Dio>((ref) => Dio());

final remoteDsProvider = Provider<PokeApiRemoteDatasource>(
  (ref) => PokeApiRemoteDatasource(ref.read(dioProvider)),
);

final capturedLocalDatasourceProvider =
    Provider<CapturedLocalDatasource>((ref) {
  final ds = CapturedLocalDatasource();
  ds.init(); 
  return ds;
});

final pokemonRepositoryProvider = Provider<PokemonRepository>(
  (ref) => PokemonRepositoryImpl(
    ref.read(remoteDsProvider),
    ref.read(capturedLocalDatasourceProvider),
  ),
);
