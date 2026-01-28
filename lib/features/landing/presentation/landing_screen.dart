import 'package:catbreeds/features/landing/presentation/bloc/cat_breeds_bloc.dart';
import 'package:catbreeds/features/landing/presentation/bloc/cat_breeds_state.dart';
import 'package:catbreeds/features/landing/presentation/widgets/breed_card.dart';
import 'package:catbreeds/features/landing/presentation/widgets/search_bar.dart'
    as custom;
import 'package:catbreeds/features/landing/presentation/widgets/section_header.dart';
import 'package:catbreeds/features/landing/presentation/widgets/top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const TopBar(),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: const custom.SearchBar(),
            ),
            const SizedBox(height: 32),
            Expanded(
              child: BlocBuilder<CatBreedsBloc, CatBreedsState>(
                builder: (context, state) {
                  if (state is CatBreedsLoading) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (state is CatBreedsError) {
                    return Center(child: Text('Error: ${state.message}'));
                  } else if (state is CatBreedsLoaded) {
                    return ListView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      itemCount: state.breeds.length + 1,
                      itemBuilder: (context, index) {
                        if (index == 0) {
                          return const Padding(
                            padding: EdgeInsets.only(bottom: 16),
                            child: SectionHeader(title: 'DISCOVER BREEDS'),
                          );
                        }
                        final breed = state.breeds[index - 1];
                        final String imageUrl = breed.referenceImageId != null
                            ? 'https://cdn2.thecatapi.com/images/${breed.referenceImageId}.jpg'
                            : 'assets/images/gato_bengala.jpg';

                        return Padding(
                          padding: const EdgeInsets.only(bottom: 24),
                          child: BreedCard(
                            name: breed.name,
                            origin: breed.origin,
                            intelligence: breed.intelligence,
                            imageUrl: imageUrl,
                          ),
                        );
                      },
                    );
                  }
                  return const SizedBox.shrink();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
