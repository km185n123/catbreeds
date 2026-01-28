import 'package:catbreeds/core/widgets/common/app_chip.dart';
import 'package:catbreeds/features/landing/domain/entities/cat_breed.dart';
import 'package:catbreeds/l10n/app_localizations.dart';
import 'package:flutter/material.dart';

class TemperamentSection extends StatelessWidget {
  final CatBreed breed;

  const TemperamentSection({super.key, required this.breed});

  @override
  Widget build(BuildContext context) {
    final temperaments = breed.temperament
        .split(',')
        .map((e) => e.trim())
        .toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(
              Icons.emoji_emotions_outlined,
              color: Theme.of(context).colorScheme.primary,
              size: 20,
            ),
            const SizedBox(width: 8),
            Text(
              AppLocalizations.of(context)!.temperament,
              style: Theme.of(
                context,
              ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: temperaments.map((temp) => AppChip(label: temp)).toList(),
        ),
      ],
    );
  }
}
