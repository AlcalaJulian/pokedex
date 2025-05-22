import '../entities/pokemon.dart';
import '../repositories/pokemon_repository.dart';

class GetFirstGenerationUseCase {
  final PokemonRepository repository;

  GetFirstGenerationUseCase(this.repository);

  Future<List<Pokemon>> call() {
    return repository.getFirstGeneration();
  }
}
