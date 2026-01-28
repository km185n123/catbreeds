import 'package:flutter/material.dart';

class BiographySection extends StatelessWidget {
  const BiographySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(
              Icons.menu_book,
              color: Theme.of(context).colorScheme.primary,
              size: 20,
            ),
            const SizedBox(width: 8),
            Text(
              'History & Biography',
              style: Theme.of(
                context,
              ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Text(
          'The Bengal is a domestic cat breed resulting from crossing a domestic feline with an Asian leopard cat (Prionailurus bengalensis). The name comes from the leopard cat\'s scientific name.\n\nBengals are known for their wild appearance, with large spots, rosettes, and a light/white belly, and a body structure reminiscent of the leopard cat.',
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            height: 1.5,
            color: Theme.of(context).colorScheme.onSurfaceVariant,
          ),
        ),
      ],
    );
  }
}
