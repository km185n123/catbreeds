import 'package:catbreeds/features/detailbreed/presentation/widgets/tag.dart';
import 'package:flutter/material.dart';

class BreedHeadline extends StatelessWidget {
  const BreedHeadline({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Bengal',
                style: Theme.of(context).textTheme.displaySmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // Always white on image
                ),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Tag(text: 'ANCIENT BREED', isBlue: true),
                  const SizedBox(width: 8),
                  Tag(text: 'SHORTHAIR', isBlue: false),
                ],
              ),
            ],
          ),
        ),
        FloatingActionButton(
          onPressed: () {},
          mini: false,
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          backgroundColor: Theme.of(context).colorScheme.primary,
          child: const Icon(Icons.favorite, color: Colors.white),
        ),
      ],
    );
  }
}
