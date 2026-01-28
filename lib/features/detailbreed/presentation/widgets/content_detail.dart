import 'package:catbreeds/features/detailbreed/presentation/widgets/biography_section.dart';
import 'package:catbreeds/features/detailbreed/presentation/widgets/stats_row.dart';
import 'package:catbreeds/features/detailbreed/presentation/widgets/temperament_section.dart';
import 'package:flutter/material.dart';

class ContentDetail extends StatelessWidget {
  const ContentDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          StatsRow(),
          SizedBox(height: 24),
          TemperamentSection(),
          SizedBox(height: 24),
          BiographySection(),
        ],
      ),
    );
  }
}
