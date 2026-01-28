import 'package:catbreeds/features/detailbreed/presentation/widgets/stat_card.dart';
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
          child: StatCard(
            title: 'ORIGIN',
            value: breed.origin,
            subtitle: 'Country of Origin',
            icon: Icons.public,
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: StatCard(
            title: 'INTELLIGENCE',
            value: '${breed.intelligence} / 5',
            subtitle: 'Cognitive Level',
            icon: Icons.psychology,
          ),
        ),
      ],
    );
  }
}
