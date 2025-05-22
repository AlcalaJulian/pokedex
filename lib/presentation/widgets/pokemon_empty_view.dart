import 'package:flutter/material.dart';

class PokemonEmptyView extends StatelessWidget {
  const PokemonEmptyView({super.key, required this.message});

  final String message;

  @override
  Widget build(BuildContext context) =>
      Center(child: Text(message));
}
