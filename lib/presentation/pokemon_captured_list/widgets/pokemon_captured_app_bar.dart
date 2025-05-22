import 'package:flutter/material.dart';
import 'package:app_localizations/app_localizations.dart';
import '../pokemon_captured_list_view_state.dart';

class PokemonCapturedAppBar extends StatelessWidget implements PreferredSizeWidget {
  const PokemonCapturedAppBar({
    super.key,
    required this.onBack,
    required this.viewState,
    required this.onClear,
    required this.localizations,
  });

  final VoidCallback onBack;
  final PokemonCapturedListViewState viewState;
  final VoidCallback onClear;
  final AppLocalizations localizations;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(localizations.translate('capturedTitle'),
          style: Theme.of(context).textTheme.titleLarge),
      leading: BackButton(onPressed: onBack),
      actions: [
        viewState.maybeWhen(
          success: (list) => list.isNotEmpty
              ? IconButton(
                  tooltip: localizations.translate('releaseAllTooltip'),
                  icon: const Icon(Icons.delete_outline),
                  onPressed: onClear,
                )
              : const SizedBox.shrink(),
          orElse: () => const SizedBox.shrink(),
        ),
      ],
    );
  }
}
