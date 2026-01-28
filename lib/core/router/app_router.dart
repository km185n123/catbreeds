import 'package:catbreeds/features/detailbreed/presentation/detail_screen.dart';
import 'package:catbreeds/features/landing/presentation/bloc/cat_breeds_bloc.dart';
import 'package:catbreeds/features/landing/presentation/bloc/cat_breeds_event.dart';
import 'package:catbreeds/features/landing/presentation/landing_screen.dart';
import 'package:catbreeds/features/splash/presentation/splash_screen.dart';
import 'package:catbreeds/core/di/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: '/', builder: (context, state) => const SplashScreen()),
    GoRoute(
      path: '/landing',
      builder: (context, state) => BlocProvider(
        create: (context) => getIt<CatBreedsBloc>()..add(CatBreedsStarted()),
        child: const LandingScreen(),
      ),
    ),
    GoRoute(path: '/detail', builder: (context, state) => const DetailScreen()),
  ],
);
