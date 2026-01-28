import 'package:flutter/material.dart';

class TitleSplash extends StatelessWidget {
  const TitleSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Cat-alog', style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(height: 4),
        Text(
          'ORIGAMI BREEDS',
          style: Theme.of(
            context,
          ).textTheme.labelMedium?.copyWith(letterSpacing: 2),
        ),
      ],
    );
  }
}
