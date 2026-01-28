import 'package:dio/dio.dart';

import 'package:catbreeds/features/landing/data/models/cat_breed_model.dart';
import 'package:catbreeds/core/error/failure.dart';

abstract class CatBreedRemoteDataSource {
  Future<List<CatBreedModel>> getCatBreeds();
}

class CatBreedRemoteDataSourceImpl implements CatBreedRemoteDataSource {
  final Dio dio;

  CatBreedRemoteDataSourceImpl({required this.dio});

  @override
  Future<List<CatBreedModel>> getCatBreeds() async {
    final response = await dio.get('/breeds');

    if (response.statusCode != 200) {
      throw const ServerFailure('Failed to load cat breeds');
    }

    final List<dynamic> decodedJson = response.data;
    return decodedJson.map((json) => CatBreedModel.fromJson(json)).toList();
  }
}
