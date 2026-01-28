import 'package:catbreeds/core/error/failure.dart';
import 'package:catbreeds/features/landing/domain/entities/cat_breed.dart';
import 'package:catbreeds/features/landing/domain/repositories/cat_breed_repository.dart';
import 'package:fpdart/fpdart.dart';

class GetCatBreeds {
  final CatBreedRepository repository;

  GetCatBreeds(this.repository);

  Future<Either<Failure, List<CatBreed>>> call() {
    return repository.getCatBreeds();
  }
}
