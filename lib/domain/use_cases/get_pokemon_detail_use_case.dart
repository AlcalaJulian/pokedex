import '../entities/pokemon.dart';
import '../repositories/pokemon_repository.dart';

class GetPokemonDetailUseCase {
  final PokemonRepository repository;

  GetPokemonDetailUseCase(this.repository);

  Future<Pokemon> call(int id) {
    return repository.getById(id);
  }
}
