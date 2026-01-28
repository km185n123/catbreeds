import 'package:catbreeds/core/error/failure.dart';
import 'package:catbreeds/features/landing/domain/entities/cat_breed.dart';
import 'package:catbreeds/features/landing/domain/repositories/cat_breed_repository.dart';
import 'package:catbreeds/features/landing/domain/usecases/get_cat_breeds.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';

class MockCatBreedRepository extends Mock implements CatBreedRepository {}

void main() {
  late GetCatBreeds usecase;
  late MockCatBreedRepository mockCatBreedRepository;

  setUp(() {
    mockCatBreedRepository = MockCatBreedRepository();
    usecase = GetCatBreeds(mockCatBreedRepository);
  });

  const tCatBreed = CatBreed(
    id: 'abys',
    name: 'Abyssinian',
    origin: 'Egypt',
    description: 'Active and curious',
    temperament: 'Active, Energetic',
    intelligence: 5,
    adaptability: 5,
    affectionLevel: 5,
    energyLevel: 5,
    grooming: 1,
    socialNeeds: 5,
    vocalisation: 1,
    referenceImageId: 'image1',
    lifeSpan: '14 - 15',
    altNames: '',
  );

  final tCatBreeds = [tCatBreed];

  test(
    'should get list of cat breeds from the repository when execution is successful',
    () async {
      // Arrange
      when(
        () => mockCatBreedRepository.getCatBreeds(),
      ).thenAnswer((_) async => Right(tCatBreeds));

      // Act
      final result = await usecase();

      // Assert
      result.fold((l) => fail('test failed: $l'), (r) => expect(r, tCatBreeds));
      verify(() => mockCatBreedRepository.getCatBreeds()).called(1);
      verifyNoMoreInteractions(mockCatBreedRepository);
    },
  );

  test(
    'should return a Failure from the repository when execution fails',
    () async {
      // Arrange
      const tFailure = ServerFailure('Server Error');
      when(
        () => mockCatBreedRepository.getCatBreeds(),
      ).thenAnswer((_) async => Left(tFailure));

      // Act
      final result = await usecase();

      // Assert
      expect(result, Left(tFailure));
      verify(() => mockCatBreedRepository.getCatBreeds()).called(1);
      verifyNoMoreInteractions(mockCatBreedRepository);
    },
  );
}
