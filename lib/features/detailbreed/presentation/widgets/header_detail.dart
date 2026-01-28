import 'package:catbreeds/features/detailbreed/presentation/widgets/breed_headline.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HeaderDetail extends StatelessWidget {
  const HeaderDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Image
        Container(
          height: 400,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/gato_bengala.jpg'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(32)),
          ),
        ),
        // Gradient for Text Readability/Theme blending
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          height: 200,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.vertical(
                bottom: Radius.circular(32),
              ),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.black.withValues(alpha: 0.8),
                ],
              ),
            ),
          ),
        ),
        // AppBar Actions
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              children: [
                IconButton(
                  onPressed: () => context.pop(),
                  icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      'Breed Profile',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.share, color: Colors.white),
                ),
              ],
            ),
          ),
        ),
        // Breed Headline (Now inside Header)
        Positioned(
          bottom: 24,
          left: 24,
          right: 24,
          child: const BreedHeadline(),
        ),
      ],
    );
  }
}
