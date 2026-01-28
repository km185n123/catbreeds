// lib/features/landing/data/datasources/cat_breed_remote_datasource.dart
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:catbreeds/features/landing/data/models/cat_breed_model.dart';
import 'package:catbreeds/core/error/failure.dart';

abstract class CatBreedRemoteDataSource {
  Future<List<CatBreedModel>> getCatBreeds();
}

class CatBreedRemoteDataSourceImpl implements CatBreedRemoteDataSource {
  final http.Client client;
  final String baseUrl;
  final String apiKey;

  CatBreedRemoteDataSourceImpl({
    required this.client,
    required this.baseUrl,
    required this.apiKey,
  });

  @override
  Future<List<CatBreedModel>> getCatBreeds() async {
    final response = await client.get(
      Uri.parse(baseUrl),
      headers: {'Content-Type': 'application/json', 'x-api-key': apiKey},
    );

    if (response.statusCode != 200) {
      throw const ServerFailure('Failed to load cat breeds');
    }

    final List<dynamic> decodedJson = json.decode(response.body);
    return decodedJson.map((json) => CatBreedModel.fromJson(json)).toList();
  }
}
