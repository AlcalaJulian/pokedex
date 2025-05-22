import 'package:flutter/material.dart';

class PokemonSearchAppBar extends StatelessWidget implements PreferredSizeWidget {
  const PokemonSearchAppBar({
    super.key,
    required this.hintText,
    required this.onQueryChanged,
  });

  final String hintText;
  final ValueChanged<String> onQueryChanged;

  @override
  Size get preferredSize => const Size.fromHeight(112); // 56 + 56

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Image.asset('assets/images/pokedex.png',
          height: 60, fit: BoxFit.contain),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(56),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
          child: Material(
            elevation: 4,
            borderRadius: BorderRadius.circular(30),
            child: TextField(
              onChanged: onQueryChanged,
              style: const TextStyle(fontSize: 16),
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                hintText: hintText,
                hintStyle: TextStyle(color: Colors.grey[600]),
                prefixIcon: const Icon(Icons.search, color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
                fillColor: Theme.of(context).colorScheme.surface,
                filled: true,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
