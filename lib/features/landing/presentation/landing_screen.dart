import 'package:catbreeds/core/error/failure.dart';
import 'package:catbreeds/core/widgets/feedback/feedback_message.dart';
import 'package:catbreeds/features/landing/presentation/bloc/cat_breeds_bloc.dart';
import 'package:catbreeds/features/landing/presentation/bloc/cat_breeds_event.dart';
import 'package:catbreeds/features/landing/presentation/bloc/cat_breeds_state.dart';
import 'package:catbreeds/features/landing/presentation/widgets/breed_card.dart';
import 'package:catbreeds/features/landing/presentation/widgets/search_bar.dart'
    as custom;
import 'package:catbreeds/features/landing/presentation/widgets/section_header.dart';
import 'package:catbreeds/features/landing/presentation/widgets/top_bar.dart';
import 'package:catbreeds/l10n/app_localizations.dart';
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
                  } else if (state is CatBreedsError) {
                    final isNetworkError = state.failure is ConnectionFailure;
                    final l10n = AppLocalizations.of(context)!;
                    return FeedbackMessage(
                      title: isNetworkError
                          ? l10n.connectionLost
                          : l10n.genericError,
                      message: isNetworkError
                          ? l10n.connectionLostMessage
                          : l10n.serverErrorMessage,
                      type: isNetworkError
                          ? FeedbackType.network
                          : FeedbackType.server,
                      onRetry: () {
                        context.read<CatBreedsBloc>().add(CatBreedsStarted());
                      },
                    );
                  } else if (state is CatBreedsLoaded) {
                    return ListView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      itemCount: state.breeds.length + 1,
                      itemBuilder: (context, index) {
                        if (index == 0) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 16),
                            child: SectionHeader(
                              title: AppLocalizations.of(
                                context,
                              )!.discoverBreeds,
                            ),
                          );
                        }
                        final breed = state.breeds[index - 1];

                        return Padding(
                          padding: const EdgeInsets.only(bottom: 24),
                          child: BreedCard(breed: breed),
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
