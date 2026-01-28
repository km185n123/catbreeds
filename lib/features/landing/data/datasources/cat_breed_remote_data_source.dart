// lib/features/landing/data/datasources/cat_breed_remote_datasource.dart
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:catbreeds/features/landing/data/models/cat_breed_model.dart';
import 'package:catbreeds/core/error/failure.dart';

abstract class CatBreedRemoteDataSource {
  Future<List<CatBreedModel>> getCatBreeds();
}

class CatBreedRemoteDataSourceImpl implements CatBreedRemoteDataSource {
  static const String _baseUrl = 'https://api.thecatapi.com/v1/breeds';
  static const String _apiKey =
      'live_99Qe4Ppj34NdplyLW67xCV7Ds0oSLKGgcWWYnSzMJY9C0QOu0HUR4azYxWkyW2nr';

  final http.Client client;

  CatBreedRemoteDataSourceImpl({required this.client});

  @override
  Future<List<CatBreedModel>> getCatBreeds() async {
    final response = await client.get(
      Uri.parse(_baseUrl),
      headers: {'Content-Type': 'application/json', 'x-api-key': _apiKey},
    );

    if (response.statusCode != 200) {
      throw const ServerFailure('Failed to load cat breeds');
    }

    final List<dynamic> decodedJson = json.decode(response.body);
    return decodedJson.map((json) => CatBreedModel.fromJson(json)).toList();
  }
}
