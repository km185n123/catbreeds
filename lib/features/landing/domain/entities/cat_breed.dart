class CatBreed {
  final String id;
  final String name;
  final String origin;
  final String description;
  final String temperament;
  final int intelligence;
  final int adaptability;
  final int affectionLevel;
  final int energyLevel;
  final int grooming;
  final int socialNeeds;
  final int vocalisation;
  final String? referenceImageId;
  final String? lifeSpan;
  final String? altNames;

  const CatBreed({
    required this.id,
    required this.name,
    required this.origin,
    required this.description,
    required this.temperament,
    required this.intelligence,
    required this.adaptability,
    required this.affectionLevel,
    required this.energyLevel,
    required this.grooming,
    required this.socialNeeds,
    required this.vocalisation,
    this.referenceImageId,
    this.lifeSpan,
    this.altNames,
  });
}
