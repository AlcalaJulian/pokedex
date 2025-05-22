import '../entities/pokemon.dart';
import '../repositories/pokemon_repository.dart';

class GetCapturedPokemonsUseCase {
  final PokemonRepository repository;

  GetCapturedPokemonsUseCase(this.repository);

  Future<List<Pokemon>> call() {
    return repository.getCaptured();
  }
}
