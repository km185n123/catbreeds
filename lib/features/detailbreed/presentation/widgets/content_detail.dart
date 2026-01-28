import 'package:catbreeds/features/detailbreed/presentation/widgets/biography_section.dart';
import 'package:catbreeds/features/detailbreed/presentation/widgets/stats_row.dart';
import 'package:catbreeds/features/detailbreed/presentation/widgets/temperament_section.dart';
import 'package:catbreeds/features/landing/domain/entities/cat_breed.dart';
import 'package:flutter/material.dart';

class ContentDetail extends StatelessWidget {
  final CatBreed breed;

  const ContentDetail({super.key, required this.breed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          StatsRow(breed: breed),
          const SizedBox(height: 24),
          TemperamentSection(breed: breed),
          const SizedBox(height: 24),
          BiographySection(breed: breed),
        ],
      ),
    );
  }
}
