// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cat_breed_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CatBreedModel _$CatBreedModelFromJson(Map<String, dynamic> json) =>
    _CatBreedModel(
      id: json['id'] as String,
      name: json['name'] as String,
      origin: json['origin'] as String,
      description: json['description'] as String,
      temperament: json['temperament'] as String,
      intelligence: (json['intelligence'] as num).toInt(),
      adaptability: (json['adaptability'] as num).toInt(),
      affectionLevel: (json['affection_level'] as num).toInt(),
      energyLevel: (json['energy_level'] as num).toInt(),
      grooming: (json['grooming'] as num).toInt(),
      socialNeeds: (json['social_needs'] as num).toInt(),
      vocalisation: (json['vocalisation'] as num).toInt(),
      referenceImageId: json['reference_image_id'] as String?,
      lifeSpan: json['life_span'] as String?,
      altNames: json['alt_names'] as String?,
    );

Map<String, dynamic> _$CatBreedModelToJson(_CatBreedModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'origin': instance.origin,
      'description': instance.description,
      'temperament': instance.temperament,
      'intelligence': instance.intelligence,
      'adaptability': instance.adaptability,
      'affection_level': instance.affectionLevel,
      'energy_level': instance.energyLevel,
      'grooming': instance.grooming,
      'social_needs': instance.socialNeeds,
      'vocalisation': instance.vocalisation,
      'reference_image_id': instance.referenceImageId,
      'life_span': instance.lifeSpan,
      'alt_names': instance.altNames,
    };
