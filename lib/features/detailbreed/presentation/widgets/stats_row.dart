import 'package:catbreeds/features/detailbreed/presentation/widgets/stat_card.dart';
import 'package:flutter/material.dart';

class StatsRow extends StatelessWidget {
  const StatsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(
          child: StatCard(
            title: 'ORIGIN',
            value: 'United States',
            subtitle: '+ Ancient Lineage',
            icon: Icons.public,
          ),
        ),
        SizedBox(width: 16),
        Expanded(
          child: StatCard(
            title: 'INTELLIGENCE',
            value: 'High',
            subtitle: '+ Quick Learner',
            icon: Icons.psychology,
          ),
        ),
      ],
    );
  }
}
