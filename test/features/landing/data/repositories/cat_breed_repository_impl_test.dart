import 'package:catbreeds/core/error/failure.dart';
import 'package:catbreeds/features/landing/data/datasources/cat_breed_remote_data_source.dart';
import 'package:catbreeds/features/landing/data/models/cat_breed_model.dart';
import 'package:catbreeds/features/landing/data/repositories/cat_breed_repository_impl.dart';
import 'package:catbreeds/features/landing/domain/entities/cat_breed.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';

class MockCatBreedRemoteDataSource extends Mock
    implements CatBreedRemoteDataSource {}

void main() {
  late CatBreedRepositoryImpl repository;
  late MockCatBreedRemoteDataSource mockRemoteDataSource;

  setUp(() {
    mockRemoteDataSource = MockCatBreedRemoteDataSource();
    repository = CatBreedRepositoryImpl(mockRemoteDataSource);
  });

  const tCatBreedModel = CatBreedModel(
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

  final tCatBreedModels = [tCatBreedModel];
  final tCatBreeds = [tCatBreedModel.toEntity()];

  group('getCatBreeds', () {
    test(
      'should return list of cat breeds when the call to remote data source is successful',
      () async {
        // Arrange
        when(
          () => mockRemoteDataSource.getCatBreeds(),
        ).thenAnswer((_) async => tCatBreedModels);

        // Act
        final result = await repository.getCatBreeds();

        // Assert
        result.fold(
          (l) => fail('test failed: $l'),
          (r) => expect(r, tCatBreeds),
        );
        verify(() => mockRemoteDataSource.getCatBreeds()).called(1);
        verifyNoMoreInteractions(mockRemoteDataSource);
      },
    );

    test(
      'should return ServerFailure when the call to remote data source is unsuccessful',
      () async {
        // Arrange
        when(() => mockRemoteDataSource.getCatBreeds()).thenThrow(Exception());

        // Act
        final result = await repository.getCatBreeds();

        // Assert
        expect(result, isA<Left<Failure, List<CatBreed>>>());
        verify(() => mockRemoteDataSource.getCatBreeds()).called(1);
        verifyNoMoreInteractions(mockRemoteDataSource);
      },
    );
  });
}
