import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:app_localizations/app_localizations.dart';
import 'package:navigation/navigation.dart';

import '../../providers/use_cases_provider.dart';
import '../../providers/captured_pokemons_provider.dart';
import 'pokemon_captured_list_view_model.dart';
import 'pokemon_captured_list_view_state.dart';
import 'widgets/pokemon_captured_app_bar.dart';
import 'widgets/pokemon_captured_filter_bar.dart';
import 'widgets/pokemon_captured_grid.dart';
import 'package:flutter_pokedex/presentation/widgets/pokemon_empty_view.dart';
import 'package:flutter_pokedex/presentation/widgets/pokemon_error_view.dart';
import 'package:flutter_pokedex/presentation/widgets/pokemon_loading_view.dart';

@visibleForTesting
final pokemonCapturedListViewModelProvider = StateNotifierProvider.autoDispose<
    PokemonCapturedListViewModel, PokemonCapturedListViewState>((ref) {
  final notifier = ref.read(capturedPokemonsNotifierProvider.notifier);
  final toggleCap = ref.read(toggleCapturedProvider);
  return PokemonCapturedListViewModel(notifier, toggleCap);
});

class PokemonCapturedListScreen extends ConsumerWidget {
  const PokemonCapturedListScreen(
      {super.key, required this.navigationContract});
  final NavigationContract navigationContract;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localizations = AppLocalizations.of(context)!;
    final viewState = ref.watch(pokemonCapturedListViewModelProvider);
    final viewModel = ref.read(pokemonCapturedListViewModelProvider.notifier);

    return Scaffold(
      appBar: PokemonCapturedAppBar(
        onBack: navigationContract.goBack,
        viewState: viewState,
        onClear: viewModel.clear,
        localizations: localizations,
      ),
      body: viewState.when(
        loading: () => const PokemonLoadingView(),
        empty: () =>
            PokemonEmptyView(message: localizations.translate('noCaptured')),
        error: (_) => PokemonErrorView(
          title: localizations.translate('errorTitle'),
          subtitle: localizations.translate('errorSubtitle'),
        ),
        success: (filteredList) {
          final allCaptured = ref.read(capturedPokemonsNotifierProvider);
          final types = {for (var p in allCaptured) ...p.types};
          final typeList = [localizations.translate('all'), ...types];

          return Column(
            children: [
              PokemonCapturedFilterBar(
                typeList: typeList,
                selectedType: viewModel.filterType,
                sortAsc: viewModel.sortAsc,
                onSortToggle: viewModel.toggleSort,
                onChanged: (v) => viewModel.setFilterType(
                    v == localizations.translate('all') ? null : v),
              ),
              Expanded(
                child: PokemonCapturedGrid(
                  pokemons: filteredList,
                  onTapPokemon: (id) =>
                      navigationContract.pushTo('/detail/$id'),
                  onToggleCapture: viewModel.toggle,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
