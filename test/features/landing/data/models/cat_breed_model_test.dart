import 'dart:convert';
import 'package:catbreeds/features/landing/data/models/cat_breed_model.dart';
import 'package:catbreeds/features/landing/domain/entities/cat_breed.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
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

  group('toEntity', () {
    test('should return a valid CatBreed entity', () {
      // Act
      final result = tCatBreedModel.toEntity();
      // Assert
      expect(result, isA<CatBreed>());
      expect(result.id, tCatBreed.id);
      expect(result.name, tCatBreed.name);
      expect(result.origin, tCatBreed.origin);
    });
  });

  group('fromJson', () {
    test('should return a valid model from JSON', () {
      // Arrange
      final Map<String, dynamic> jsonMap = <String, dynamic>{
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
      };

      // Act
      final result = CatBreedModel.fromJson(jsonMap);

      // Assert
      expect(result, tCatBreedModel);
    });
  });
}
