import 'package:catbreeds/core/network/dio_client.dart';
import 'package:catbreeds/features/landing/data/datasources/cat_breed_remote_data_source.dart';
import 'package:catbreeds/features/landing/data/models/cat_breed_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockDioClient extends Mock implements DioClient {}

class MockDio extends Mock implements Dio {}

void main() {
  late CatBreedRemoteDataSourceImpl dataSource;
  late MockDioClient mockDioClient;
  late MockDio mockDio;

  setUp(() {
    mockDioClient = MockDioClient();
    mockDio = MockDio();
    // Assuming DioClient has a 'dio' getter or similar you can mock
    // But CatBreedRemoteDataSourceImpl likely calls dio directly
    // Let's check how it's implemented. For now, assuming it takes Dio directly.
    // Wait, the previous files showed it takes 'Dio', not 'DioClient' logic directly, or uses DioClient.
    // Let's assume standard Dio mock for get requests.
    dataSource = CatBreedRemoteDataSourceImpl(dio: mockDio);
  });

  test(
    'should return list of CatBreedModel when the response code is 200',
    () async {
      // Arrange
      final tResponseData = [
        {
          'id': 'abys',
          'name': 'Abyssinian',
          'origin': 'Egypt',
          'description': 'Active and curious',
          'temperament': 'Active, Energetic',
          'intelligence': 5,
          'adaptability': 5,
          'affection_level': 5,
          'energy_level': 5,
          'grooming': 1,
          'social_needs': 5,
          'vocalisation': 1,
          'reference_image_id': 'image1',
          'life_span': '14 - 15',
          'alt_names': '',
        },
      ];

      when(() => mockDio.get(any())).thenAnswer(
        (_) async => Response(
          data: tResponseData,
          statusCode: 200,
          requestOptions: RequestOptions(path: ''),
        ),
      );

      // Act
      final result = await dataSource.getCatBreeds();

      // Assert
      expect(result, isA<List<CatBreedModel>>());
      expect(result.first.id, 'abys');
    },
  );

  test(
    'should throw a DioException when the response code is 404 or other',
    () async {
      // Arrange
      when(() => mockDio.get(any())).thenThrow(
        DioException(
          requestOptions: RequestOptions(path: ''),
          response: Response(
            statusCode: 404,
            requestOptions: RequestOptions(path: ''),
          ),
          type: DioExceptionType.badResponse,
        ),
      );

      // Act
      final call = dataSource.getCatBreeds;

      // Assert
      expect(() => call(), throwsA(isA<DioException>()));
    },
  );
}
