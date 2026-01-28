import 'package:catbreeds/features/landing/domain/entities/cat_breed.dart';
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
              'Temperament',
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
          children: temperaments
              .map(
                (temp) => Chip(
                  label: Text(temp),
                  labelStyle: const TextStyle(fontSize: 12),
                  backgroundColor: Theme.of(
                    context,
                  ).colorScheme.surfaceContainerHighest.withValues(alpha: 0.3),
                  side: BorderSide.none,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}
