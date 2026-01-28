import 'package:catbreeds/core/config/app_config.dart';
import 'package:catbreeds/features/landing/data/datasources/cat_breed_remote_data_source.dart';
import 'package:catbreeds/features/landing/data/repositories/cat_breed_repository_impl.dart';
import 'package:catbreeds/features/landing/domain/repositories/cat_breed_repository.dart';
import 'package:catbreeds/features/landing/domain/usecases/get_cat_breeds.dart';
import 'package:catbreeds/features/landing/presentation/bloc/cat_breeds_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

final getIt = GetIt.instance;

void setupServiceLocator(AppConfig config) {
  // Config
  getIt.registerSingleton<AppConfig>(config);

  // External
  getIt.registerLazySingleton(() => http.Client());

  // Data sources
  getIt.registerLazySingleton<CatBreedRemoteDataSource>(
    () => CatBreedRemoteDataSourceImpl(
      client: getIt(),
      baseUrl: config.baseUrl,
      apiKey: config.apiKey,
    ),
  );

  // Repositories
  getIt.registerLazySingleton<CatBreedRepository>(
    () => CatBreedRepositoryImpl(getIt()),
  );

  // Use cases
  getIt.registerLazySingleton(() => GetCatBreeds(getIt()));

  // BLoC
  getIt.registerFactory(() => CatBreedsBloc(getIt()));
}
