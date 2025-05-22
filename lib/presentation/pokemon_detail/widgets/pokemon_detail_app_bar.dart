import 'package:flutter/material.dart';

class PokemonDetailAppBar extends StatelessWidget implements PreferredSizeWidget {
  const PokemonDetailAppBar({super.key, required this.onBack});

  final VoidCallback onBack;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      foregroundColor: Theme.of(context).colorScheme.onBackground,
      leading: BackButton(onPressed: onBack),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
