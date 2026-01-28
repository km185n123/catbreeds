import 'package:catbreeds/core/base/base_repository.dart';
import 'package:catbreeds/core/error/failure.dart';
import 'package:catbreeds/features/landing/data/datasources/cat_breed_remote_data_source.dart';
import 'package:catbreeds/features/landing/domain/entities/cat_breed.dart';
import 'package:catbreeds/features/landing/domain/repositories/cat_breed_repository.dart';
import 'package:fpdart/fpdart.dart';

class CatBreedRepositoryImpl extends BaseRepository
    implements CatBreedRepository {
  final CatBreedRemoteDataSource remoteDataSource;

  CatBreedRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Failure, List<CatBreed>>> getCatBreeds() async {
    return performRequest<List<CatBreed>>(() async {
      final models = await remoteDataSource.getCatBreeds();
      return models.map((e) => e.toEntity()).toList();
    });
  }
}
