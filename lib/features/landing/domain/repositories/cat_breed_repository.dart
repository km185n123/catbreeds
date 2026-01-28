import 'package:catbreeds/core/error/failure.dart';
import 'package:catbreeds/features/landing/domain/entities/cat_breed.dart';
import 'package:fpdart/fpdart.dart';

abstract class CatBreedRepository {
  Future<Either<Failure, List<CatBreed>>> getCatBreeds();
}
