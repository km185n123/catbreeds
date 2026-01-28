// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cat_breed_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CatBreedModel {

 String get id; String get name; String get origin; String get description; String get temperament; int get intelligence; int get adaptability;@JsonKey(name: 'affection_level') int get affectionLevel;@JsonKey(name: 'energy_level') int get energyLevel; int get grooming;@JsonKey(name: 'social_needs') int get socialNeeds; int get vocalisation;@JsonKey(name: 'reference_image_id') String? get referenceImageId;@JsonKey(name: 'life_span') String? get lifeSpan;@JsonKey(name: 'alt_names') String? get altNames;
/// Create a copy of CatBreedModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CatBreedModelCopyWith<CatBreedModel> get copyWith => _$CatBreedModelCopyWithImpl<CatBreedModel>(this as CatBreedModel, _$identity);

  /// Serializes this CatBreedModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CatBreedModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.origin, origin) || other.origin == origin)&&(identical(other.description, description) || other.description == description)&&(identical(other.temperament, temperament) || other.temperament == temperament)&&(identical(other.intelligence, intelligence) || other.intelligence == intelligence)&&(identical(other.adaptability, adaptability) || other.adaptability == adaptability)&&(identical(other.affectionLevel, affectionLevel) || other.affectionLevel == affectionLevel)&&(identical(other.energyLevel, energyLevel) || other.energyLevel == energyLevel)&&(identical(other.grooming, grooming) || other.grooming == grooming)&&(identical(other.socialNeeds, socialNeeds) || other.socialNeeds == socialNeeds)&&(identical(other.vocalisation, vocalisation) || other.vocalisation == vocalisation)&&(identical(other.referenceImageId, referenceImageId) || other.referenceImageId == referenceImageId)&&(identical(other.lifeSpan, lifeSpan) || other.lifeSpan == lifeSpan)&&(identical(other.altNames, altNames) || other.altNames == altNames));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,origin,description,temperament,intelligence,adaptability,affectionLevel,energyLevel,grooming,socialNeeds,vocalisation,referenceImageId,lifeSpan,altNames);

@override
String toString() {
  return 'CatBreedModel(id: $id, name: $name, origin: $origin, description: $description, temperament: $temperament, intelligence: $intelligence, adaptability: $adaptability, affectionLevel: $affectionLevel, energyLevel: $energyLevel, grooming: $grooming, socialNeeds: $socialNeeds, vocalisation: $vocalisation, referenceImageId: $referenceImageId, lifeSpan: $lifeSpan, altNames: $altNames)';
}


}

/// @nodoc
abstract mixin class $CatBreedModelCopyWith<$Res>  {
  factory $CatBreedModelCopyWith(CatBreedModel value, $Res Function(CatBreedModel) _then) = _$CatBreedModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, String origin, String description, String temperament, int intelligence, int adaptability,@JsonKey(name: 'affection_level') int affectionLevel,@JsonKey(name: 'energy_level') int energyLevel, int grooming,@JsonKey(name: 'social_needs') int socialNeeds, int vocalisation,@JsonKey(name: 'reference_image_id') String? referenceImageId,@JsonKey(name: 'life_span') String? lifeSpan,@JsonKey(name: 'alt_names') String? altNames
});




}
/// @nodoc
class _$CatBreedModelCopyWithImpl<$Res>
    implements $CatBreedModelCopyWith<$Res> {
  _$CatBreedModelCopyWithImpl(this._self, this._then);

  final CatBreedModel _self;
  final $Res Function(CatBreedModel) _then;

/// Create a copy of CatBreedModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? origin = null,Object? description = null,Object? temperament = null,Object? intelligence = null,Object? adaptability = null,Object? affectionLevel = null,Object? energyLevel = null,Object? grooming = null,Object? socialNeeds = null,Object? vocalisation = null,Object? referenceImageId = freezed,Object? lifeSpan = freezed,Object? altNames = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,origin: null == origin ? _self.origin : origin // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,temperament: null == temperament ? _self.temperament : temperament // ignore: cast_nullable_to_non_nullable
as String,intelligence: null == intelligence ? _self.intelligence : intelligence // ignore: cast_nullable_to_non_nullable
as int,adaptability: null == adaptability ? _self.adaptability : adaptability // ignore: cast_nullable_to_non_nullable
as int,affectionLevel: null == affectionLevel ? _self.affectionLevel : affectionLevel // ignore: cast_nullable_to_non_nullable
as int,energyLevel: null == energyLevel ? _self.energyLevel : energyLevel // ignore: cast_nullable_to_non_nullable
as int,grooming: null == grooming ? _self.grooming : grooming // ignore: cast_nullable_to_non_nullable
as int,socialNeeds: null == socialNeeds ? _self.socialNeeds : socialNeeds // ignore: cast_nullable_to_non_nullable
as int,vocalisation: null == vocalisation ? _self.vocalisation : vocalisation // ignore: cast_nullable_to_non_nullable
as int,referenceImageId: freezed == referenceImageId ? _self.referenceImageId : referenceImageId // ignore: cast_nullable_to_non_nullable
as String?,lifeSpan: freezed == lifeSpan ? _self.lifeSpan : lifeSpan // ignore: cast_nullable_to_non_nullable
as String?,altNames: freezed == altNames ? _self.altNames : altNames // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CatBreedModel].
extension CatBreedModelPatterns on CatBreedModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CatBreedModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CatBreedModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CatBreedModel value)  $default,){
final _that = this;
switch (_that) {
case _CatBreedModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CatBreedModel value)?  $default,){
final _that = this;
switch (_that) {
case _CatBreedModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String origin,  String description,  String temperament,  int intelligence,  int adaptability, @JsonKey(name: 'affection_level')  int affectionLevel, @JsonKey(name: 'energy_level')  int energyLevel,  int grooming, @JsonKey(name: 'social_needs')  int socialNeeds,  int vocalisation, @JsonKey(name: 'reference_image_id')  String? referenceImageId, @JsonKey(name: 'life_span')  String? lifeSpan, @JsonKey(name: 'alt_names')  String? altNames)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CatBreedModel() when $default != null:
return $default(_that.id,_that.name,_that.origin,_that.description,_that.temperament,_that.intelligence,_that.adaptability,_that.affectionLevel,_that.energyLevel,_that.grooming,_that.socialNeeds,_that.vocalisation,_that.referenceImageId,_that.lifeSpan,_that.altNames);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String origin,  String description,  String temperament,  int intelligence,  int adaptability, @JsonKey(name: 'affection_level')  int affectionLevel, @JsonKey(name: 'energy_level')  int energyLevel,  int grooming, @JsonKey(name: 'social_needs')  int socialNeeds,  int vocalisation, @JsonKey(name: 'reference_image_id')  String? referenceImageId, @JsonKey(name: 'life_span')  String? lifeSpan, @JsonKey(name: 'alt_names')  String? altNames)  $default,) {final _that = this;
switch (_that) {
case _CatBreedModel():
return $default(_that.id,_that.name,_that.origin,_that.description,_that.temperament,_that.intelligence,_that.adaptability,_that.affectionLevel,_that.energyLevel,_that.grooming,_that.socialNeeds,_that.vocalisation,_that.referenceImageId,_that.lifeSpan,_that.altNames);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String origin,  String description,  String temperament,  int intelligence,  int adaptability, @JsonKey(name: 'affection_level')  int affectionLevel, @JsonKey(name: 'energy_level')  int energyLevel,  int grooming, @JsonKey(name: 'social_needs')  int socialNeeds,  int vocalisation, @JsonKey(name: 'reference_image_id')  String? referenceImageId, @JsonKey(name: 'life_span')  String? lifeSpan, @JsonKey(name: 'alt_names')  String? altNames)?  $default,) {final _that = this;
switch (_that) {
case _CatBreedModel() when $default != null:
return $default(_that.id,_that.name,_that.origin,_that.description,_that.temperament,_that.intelligence,_that.adaptability,_that.affectionLevel,_that.energyLevel,_that.grooming,_that.socialNeeds,_that.vocalisation,_that.referenceImageId,_that.lifeSpan,_that.altNames);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CatBreedModel extends CatBreedModel {
  const _CatBreedModel({required this.id, required this.name, required this.origin, required this.description, required this.temperament, required this.intelligence, required this.adaptability, @JsonKey(name: 'affection_level') required this.affectionLevel, @JsonKey(name: 'energy_level') required this.energyLevel, required this.grooming, @JsonKey(name: 'social_needs') required this.socialNeeds, required this.vocalisation, @JsonKey(name: 'reference_image_id') this.referenceImageId, @JsonKey(name: 'life_span') this.lifeSpan, @JsonKey(name: 'alt_names') this.altNames}): super._();
  factory _CatBreedModel.fromJson(Map<String, dynamic> json) => _$CatBreedModelFromJson(json);

@override final  String id;
@override final  String name;
@override final  String origin;
@override final  String description;
@override final  String temperament;
@override final  int intelligence;
@override final  int adaptability;
@override@JsonKey(name: 'affection_level') final  int affectionLevel;
@override@JsonKey(name: 'energy_level') final  int energyLevel;
@override final  int grooming;
@override@JsonKey(name: 'social_needs') final  int socialNeeds;
@override final  int vocalisation;
@override@JsonKey(name: 'reference_image_id') final  String? referenceImageId;
@override@JsonKey(name: 'life_span') final  String? lifeSpan;
@override@JsonKey(name: 'alt_names') final  String? altNames;

/// Create a copy of CatBreedModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CatBreedModelCopyWith<_CatBreedModel> get copyWith => __$CatBreedModelCopyWithImpl<_CatBreedModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CatBreedModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CatBreedModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.origin, origin) || other.origin == origin)&&(identical(other.description, description) || other.description == description)&&(identical(other.temperament, temperament) || other.temperament == temperament)&&(identical(other.intelligence, intelligence) || other.intelligence == intelligence)&&(identical(other.adaptability, adaptability) || other.adaptability == adaptability)&&(identical(other.affectionLevel, affectionLevel) || other.affectionLevel == affectionLevel)&&(identical(other.energyLevel, energyLevel) || other.energyLevel == energyLevel)&&(identical(other.grooming, grooming) || other.grooming == grooming)&&(identical(other.socialNeeds, socialNeeds) || other.socialNeeds == socialNeeds)&&(identical(other.vocalisation, vocalisation) || other.vocalisation == vocalisation)&&(identical(other.referenceImageId, referenceImageId) || other.referenceImageId == referenceImageId)&&(identical(other.lifeSpan, lifeSpan) || other.lifeSpan == lifeSpan)&&(identical(other.altNames, altNames) || other.altNames == altNames));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,origin,description,temperament,intelligence,adaptability,affectionLevel,energyLevel,grooming,socialNeeds,vocalisation,referenceImageId,lifeSpan,altNames);

@override
String toString() {
  return 'CatBreedModel(id: $id, name: $name, origin: $origin, description: $description, temperament: $temperament, intelligence: $intelligence, adaptability: $adaptability, affectionLevel: $affectionLevel, energyLevel: $energyLevel, grooming: $grooming, socialNeeds: $socialNeeds, vocalisation: $vocalisation, referenceImageId: $referenceImageId, lifeSpan: $lifeSpan, altNames: $altNames)';
}


}

/// @nodoc
abstract mixin class _$CatBreedModelCopyWith<$Res> implements $CatBreedModelCopyWith<$Res> {
  factory _$CatBreedModelCopyWith(_CatBreedModel value, $Res Function(_CatBreedModel) _then) = __$CatBreedModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String origin, String description, String temperament, int intelligence, int adaptability,@JsonKey(name: 'affection_level') int affectionLevel,@JsonKey(name: 'energy_level') int energyLevel, int grooming,@JsonKey(name: 'social_needs') int socialNeeds, int vocalisation,@JsonKey(name: 'reference_image_id') String? referenceImageId,@JsonKey(name: 'life_span') String? lifeSpan,@JsonKey(name: 'alt_names') String? altNames
});




}
/// @nodoc
class __$CatBreedModelCopyWithImpl<$Res>
    implements _$CatBreedModelCopyWith<$Res> {
  __$CatBreedModelCopyWithImpl(this._self, this._then);

  final _CatBreedModel _self;
  final $Res Function(_CatBreedModel) _then;

/// Create a copy of CatBreedModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? origin = null,Object? description = null,Object? temperament = null,Object? intelligence = null,Object? adaptability = null,Object? affectionLevel = null,Object? energyLevel = null,Object? grooming = null,Object? socialNeeds = null,Object? vocalisation = null,Object? referenceImageId = freezed,Object? lifeSpan = freezed,Object? altNames = freezed,}) {
  return _then(_CatBreedModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,origin: null == origin ? _self.origin : origin // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,temperament: null == temperament ? _self.temperament : temperament // ignore: cast_nullable_to_non_nullable
as String,intelligence: null == intelligence ? _self.intelligence : intelligence // ignore: cast_nullable_to_non_nullable
as int,adaptability: null == adaptability ? _self.adaptability : adaptability // ignore: cast_nullable_to_non_nullable
as int,affectionLevel: null == affectionLevel ? _self.affectionLevel : affectionLevel // ignore: cast_nullable_to_non_nullable
as int,energyLevel: null == energyLevel ? _self.energyLevel : energyLevel // ignore: cast_nullable_to_non_nullable
as int,grooming: null == grooming ? _self.grooming : grooming // ignore: cast_nullable_to_non_nullable
as int,socialNeeds: null == socialNeeds ? _self.socialNeeds : socialNeeds // ignore: cast_nullable_to_non_nullable
as int,vocalisation: null == vocalisation ? _self.vocalisation : vocalisation // ignore: cast_nullable_to_non_nullable
as int,referenceImageId: freezed == referenceImageId ? _self.referenceImageId : referenceImageId // ignore: cast_nullable_to_non_nullable
as String?,lifeSpan: freezed == lifeSpan ? _self.lifeSpan : lifeSpan // ignore: cast_nullable_to_non_nullable
as String?,altNames: freezed == altNames ? _self.altNames : altNames // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
