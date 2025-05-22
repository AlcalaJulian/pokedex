import 'package:dio/dio.dart';
import 'package:flutter_pokedex/data/models/pokemon_list_dto.dart';
import 'package:retrofit/retrofit.dart';

import '../models/pokemon_detail_dto.dart';

part 'pokeapi_remote_datasource.g.dart';

@RestApi(baseUrl: 'https://pokeapi.co/api/v2')
abstract class PokeApiRemoteDatasource {
  factory PokeApiRemoteDatasource(Dio dio, {String baseUrl}) =
      _PokeApiRemoteDatasource;

  @GET('/pokemon')
  Future<PokemonListDto> getPokemonList({
    @Query('limit') int limit,
    @Query('offset') int offset,
  });
  @GET('/pokemon/{id}')
  Future<PokemonDetailDto> getPokemonDetails(@Path('id') int id);
}
