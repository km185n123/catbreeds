import 'package:catbreeds/core/widgets/cards/app_stat_card.dart';
import 'package:catbreeds/l10n/app_localizations.dart';
import 'package:catbreeds/features/landing/domain/entities/cat_breed.dart';
import 'package:flutter/material.dart';

class StatsRow extends StatelessWidget {
  final CatBreed breed;

  const StatsRow({super.key, required this.breed});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: AppStatCard(
            title: AppLocalizations.of(context)!.origin.toUpperCase(),
            value: breed.origin,
            subtitle: AppLocalizations.of(
              context,
            )!.origin, // Assuming subtitle reuse or similar meaning
            icon: Icons.public,
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: AppStatCard(
            title: AppLocalizations.of(context)!.intelligence.toUpperCase(),
            value: '${breed.intelligence} / 5',
            subtitle: AppLocalizations.of(
              context,
            )!.intelligence, // Assuming similar meaning
            icon: Icons.psychology,
          ),
        ),
      ],
    );
  }
}
