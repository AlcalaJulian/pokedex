import 'package:flutter/material.dart';

class PokemonLoadingView extends StatelessWidget {
  const PokemonLoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        'assets/images/loading_2.gif',
        width: 800,
        height: 800,
        fit: BoxFit.contain,
      ),
    );
  }
}
