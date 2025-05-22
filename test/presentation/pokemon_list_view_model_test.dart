import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_pokedex/domain/entities/pokemon.dart';
import 'package:flutter_pokedex/presentation/pokemon_list/pokemon_list_view_model.dart';
import 'mocks/get_first_generation_use_case_test.mocks.dart';

void main() {
  late MockGetFirstGenerationUseCase mockUseCase;
  late PokemonListViewModel viewModel;

  const mockList = [
    Pokemon(
        id: 25,
        name: 'pikachu',
        imageUrl: '',
        types: [],
        height: 4,
        weight: 60),
    Pokemon(
        id: 1,
        name: 'bulbasaur',
        imageUrl: '',
        types: [],
        height: 7,
        weight: 69),
    Pokemon(
        id: 4,
        name: 'charmander',
        imageUrl: '',
        types: [],
        height: 6,
        weight: 85),
  ];

  setUp(() {
    mockUseCase = MockGetFirstGenerationUseCase();
  });

  test('Inicializa en success si el use case retorna datos', () async {
    when(mockUseCase()).thenAnswer((_) async => mockList);

    viewModel = PokemonListViewModel(mockUseCase);
    await Future.delayed(const Duration(milliseconds: 10));

    final length = viewModel.state.maybeWhen(
      success: (list) => list.length,
      orElse: () => -1,
    );

    expect(length, 3);
  });

  test('Inicializa en empty si el use case retorna lista vacía', () async {
    when(mockUseCase()).thenAnswer((_) async => []);

    viewModel = PokemonListViewModel(mockUseCase);
    await Future.delayed(const Duration(milliseconds: 10));

    final isEmpty = viewModel.state.maybeWhen(
      empty: () => true,
      orElse: () => false,
    );

    expect(isEmpty, true);
  });

  test('Filtrado correcto por nombre', () async {
    when(mockUseCase()).thenAnswer((_) async => mockList);

    viewModel = PokemonListViewModel(mockUseCase);
    await Future.delayed(const Duration(milliseconds: 10));

    viewModel.search('char');
    await Future.delayed(const Duration(milliseconds: 10));

    final result = viewModel.state.maybeWhen(
      success: (list) => list,
      orElse: () => [],
    );

    expect(result.length, 1);
    expect(result.first.name, 'charmander');
  });

  test('Maneja correctamente el error si el use case lanza excepción',
      () async {
    when(mockUseCase()).thenThrow(Exception('Fallo'));

    viewModel = PokemonListViewModel(mockUseCase);
    await Future.delayed(const Duration(milliseconds: 10));

    final message = viewModel.state.maybeWhen(
      error: (msg) => msg,
      orElse: () => '',
    );

    expect(message, contains('Fallo'));
  });
}
