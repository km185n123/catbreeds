import 'package:catbreeds/features/detailbreed/presentation/widgets/tag.dart';
import 'package:catbreeds/features/landing/domain/entities/cat_breed.dart';
import 'package:flutter/material.dart';

class BreedHeadline extends StatelessWidget {
  final CatBreed breed;

  const BreedHeadline({super.key, required this.breed});

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
                breed.name,
                style: Theme.of(context).textTheme.displaySmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Tag(text: breed.origin.toUpperCase(), isBlue: true),
                  if (breed.lifeSpan != null) ...[
                    const SizedBox(width: 8),
                    Tag(text: '${breed.lifeSpan} YEARS', isBlue: false),
                  ],
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
