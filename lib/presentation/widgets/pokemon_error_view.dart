import 'package:flutter/material.dart';

class PokemonErrorView extends StatelessWidget {
  const PokemonErrorView({
    super.key,
    required this.title,
    required this.subtitle,
  });

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/error-network.gif',
            width: 200,
            height: 200,
            fit: BoxFit.contain,
          ),
          const SizedBox(height: 16),
          Text(title,
              style: Theme.of(context).textTheme.titleMedium,
              textAlign: TextAlign.center),
          const SizedBox(height: 8),
          Text(subtitle,
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
