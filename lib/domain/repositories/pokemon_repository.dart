import '../entities/pokemon.dart';

abstract class PokemonRepository {
  Future<List<Pokemon>> getFirstGeneration(); 
  Future<Pokemon> getById(int id); 
  Future<List<Pokemon>> getCaptured(); 
  Future<void> toggleCaptured(Pokemon pokemon);
}
