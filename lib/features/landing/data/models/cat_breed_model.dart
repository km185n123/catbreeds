import 'package:catbreeds/features/landing/domain/entities/cat_breed.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cat_breed_model.freezed.dart';
part 'cat_breed_model.g.dart';

@freezed
abstract class CatBreedModel with _$CatBreedModel {
  const CatBreedModel._();

  const factory CatBreedModel({
    required String id,
    required String name,
    required String origin,
    required String description,
    required String temperament,
    required int intelligence,
    required int adaptability,
    @JsonKey(name: 'affection_level') required int affectionLevel,
    @JsonKey(name: 'energy_level') required int energyLevel,
    required int grooming,
    @JsonKey(name: 'social_needs') required int socialNeeds,
    required int vocalisation,
    @JsonKey(name: 'reference_image_id') String? referenceImageId,
    @JsonKey(name: 'life_span') String? lifeSpan,
    @JsonKey(name: 'alt_names') String? altNames,
  }) = _CatBreedModel;

  factory CatBreedModel.fromJson(Map<String, dynamic> json) =>
      _$CatBreedModelFromJson(json);

  CatBreed toEntity() {
    return CatBreed(
      id: id,
      name: name,
      origin: origin,
      description: description,
      temperament: temperament,
      intelligence: intelligence,
      adaptability: adaptability,
      affectionLevel: affectionLevel,
      energyLevel: energyLevel,
      grooming: grooming,
      socialNeeds: socialNeeds,
      vocalisation: vocalisation,
      referenceImageId: referenceImageId,
      lifeSpan: lifeSpan,
      altNames: altNames,
    );
  }
}
