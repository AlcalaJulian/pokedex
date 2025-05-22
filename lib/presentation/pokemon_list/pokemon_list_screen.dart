import 'package:flutter/material.dart';
import 'package:flutter_pokedex/presentation/pokemon_list/pokemon_list_widgets/pokemon_search_bar.dart';
import 'package:flutter_pokedex/presentation/widgets/pokemon_empty_view.dart';
import 'package:flutter_pokedex/presentation/widgets/pokemon_error_view.dart';
import 'package:flutter_pokedex/presentation/widgets/pokemon_loading_view.dart';
import 'package:flutter_pokedex/presentation/theme/pokemon_type_colors.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:app_localizations/app_localizations.dart';
import 'package:navigation/navigation.dart';

import '../../../providers/use_cases_provider.dart';
import 'pokemon_list_view_model.dart';
import 'pokemon_list_view_state.dart';
import 'pokemon_list_widgets/pokemon_grid.dart';

@visibleForTesting
final pokemonListViewModelProvider = StateNotifierProvider.autoDispose<
    PokemonListViewModel, PokemonListViewState>((ref) {
  final getFirstGen = ref.read(getFirstGenProvider);
  return PokemonListViewModel(getFirstGen);
});

class PokemonListScreen extends ConsumerStatefulWidget {
  const PokemonListScreen({super.key, required this.navigationContract});
  final NavigationContract navigationContract;

  @override
  ConsumerState<PokemonListScreen> createState() => _PokemonListScreenState();
}

class _PokemonListScreenState extends ConsumerState<PokemonListScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _rotationController;

  @override
  void initState() {
    super.initState();
    _rotationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2))
          ..repeat();
  }

  @override
  void dispose() {
    _rotationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    final viewState = ref.watch(pokemonListViewModelProvider);
    final viewModel = ref.read(pokemonListViewModelProvider.notifier);

    return Scaffold(
      appBar: PokemonSearchAppBar(
        hintText: localizations.translate('searchPokemon'),
        onQueryChanged: viewModel.onQueryChanged,
      ),
      body: viewState.when(
        loading: () => const PokemonLoadingView(),
        empty: () => PokemonEmptyView(message: localizations.translate('noResults')),
        error: (_) => PokemonErrorView(
          title: localizations.translate('errorTitle'),
          subtitle: localizations.translate('errorSubtitle'),
        ),
        success: (pokemons) => PokemonGrid(
          pokemons: pokemons,
          navigationContract: widget.navigationContract,
          typeColors: pokemonTypeColors,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: RotationTransition(
        turns: _rotationController,
        child: FloatingActionButton(
          onPressed: () => widget.navigationContract.pushTo('/captured'),
          tooltip: localizations.translate('tooltipCaptured'),
          shape: const CircleBorder(),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          child: Image.asset('assets/images/pokeball.png',
              width: 40, height: 40, fit: BoxFit.contain),
        ),
      ),
    );
  }
}
