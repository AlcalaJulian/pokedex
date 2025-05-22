import '../entities/pokemon.dart';
import '../repositories/pokemon_repository.dart';

class ToggleCapturedPokemonUseCase {
  final PokemonRepository repository;

  ToggleCapturedPokemonUseCase(this.repository);

  Future<void> call(Pokemon pokemon) {
    return repository.toggleCaptured(pokemon);
  }
}
