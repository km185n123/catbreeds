import 'package:catbreeds/core/config/app_config.dart';
import 'package:catbreeds/core/di/service_locator.dart';
import 'package:catbreeds/features/detailbreed/presentation/widgets/breed_headline.dart';
import 'package:catbreeds/l10n/app_localizations.dart';
import 'package:catbreeds/features/landing/domain/entities/cat_breed.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HeaderDetail extends StatelessWidget {
  final CatBreed breed;

  const HeaderDetail({super.key, required this.breed});

  @override
  Widget build(BuildContext context) {
    final String imageUrl = breed.referenceImageId != null
        ? '${getIt<AppConfig>().imageBaseUrl}${breed.referenceImageId}.jpg'
        : 'assets/images/gato_bengala.jpg';

    final ImageProvider imageProvider = imageUrl.startsWith('http')
        ? NetworkImage(imageUrl)
        : AssetImage(imageUrl) as ImageProvider;

    return Stack(
      children: [
        // Image
        Container(
          height: 400,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
            borderRadius: const BorderRadius.vertical(
              bottom: Radius.circular(32),
            ),
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
                      AppLocalizations.of(context)!.breedProfile,
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
          child: BreedHeadline(breed: breed),
        ),
      ],
    );
  }
}
