import 'package:flutter/material.dart';
import 'package:flutter_pokedex/presentation/pokemon_detail/widgets/pokemon_detail_app_bar.dart';
import 'package:flutter_pokedex/presentation/pokemon_detail/widgets/pokemon_detail_info_card.dart';
import 'package:flutter_pokedex/presentation/widgets/pokemon_error_view.dart';
import 'package:flutter_pokedex/presentation/widgets/pokemon_loading_view.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:app_localizations/app_localizations.dart';
import 'package:navigation/navigation.dart';
import '../../providers/use_cases_provider.dart';
import '../../providers/captured_pokemons_provider.dart';
import 'pokemon_detail_view_model.dart';
import 'pokemon_detail_view_state.dart';

@visibleForTesting
final pokemonDetailViewModelProvider = StateNotifierProvider.autoDispose
    .family<PokemonDetailViewModel, PokemonDetailViewState, int>(
  (ref, pokemonId) {
    final getDetail = ref.read(getDetailProvider);
    final toggleCaptured = ref.read(toggleCapturedProvider);
    return PokemonDetailViewModel(
      ref: ref,
      getPokemonDetailUseCase: getDetail,
      toggleCapturedPokemonUseCase: toggleCaptured,
      pokemonId: pokemonId,
    );
  },
);

class PokemonDetailScreen extends ConsumerWidget {
  const PokemonDetailScreen({
    super.key,
    required this.navigationContract,
    required this.pokemonId,
  });

  final NavigationContract navigationContract;
  final int pokemonId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localizations = AppLocalizations.of(context)!;
    final state = ref.watch(pokemonDetailViewModelProvider(pokemonId));
    final viewModel =
        ref.read(pokemonDetailViewModelProvider(pokemonId).notifier);

    return Scaffold(
      appBar: PokemonDetailAppBar(onBack: navigationContract.goBack),
      extendBodyBehindAppBar: true,
      body: state.when(
        loading: () => const PokemonLoadingView(),
        error: (_) => PokemonErrorView(
          title: localizations.translate('errorTitle'),
          subtitle: localizations.translate('errorSubtitle'),
        ),
        success: (pokemon) => PokemonDetailBody(
          pokemon: pokemon,
          viewModel: viewModel,
          localizations: localizations,
          capturedList: ref.watch(capturedPokemonsNotifierProvider),
        ),
      ),
    );
  }
}
