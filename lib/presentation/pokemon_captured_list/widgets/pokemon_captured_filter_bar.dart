import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:app_localizations/app_localizations.dart';


class PokemonCapturedFilterBar extends ConsumerWidget {
  const PokemonCapturedFilterBar({
    super.key,
    required this.typeList,
    required this.selectedType,
    required this.sortAsc,
    required this.onSortToggle,
    required this.onChanged
  });

  final List<String> typeList;
  final String? selectedType;
  final bool sortAsc;
  final VoidCallback onSortToggle;
  final Function(String?) onChanged;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loc = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          Expanded(
            child: DropdownButtonFormField<String>(
              value: selectedType ?? loc.translate('all'),
              decoration: InputDecoration(
                filled: true,
                fillColor: theme.colorScheme.surface,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
              ),
              icon: const Icon(Icons.expand_more),
              items: typeList
                  .map((type) => DropdownMenuItem(
                        value: type,
                        child: Text(type.toUpperCase()),
                      ))
                  .toList(),
              onChanged:onChanged,
            ),
          ),
          const SizedBox(width: 8),
          IconButton(
            icon: Icon(sortAsc ? Icons.sort_by_alpha : Icons.sort),
            tooltip:
                sortAsc ? loc.translate('sortById') : loc.translate('sortAZ'),
            onPressed: onSortToggle,
          ),
        ],
      ),
    );
  }
}
