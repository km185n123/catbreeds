import 'package:catbreeds/core/error/failure.dart';
import 'package:catbreeds/features/landing/domain/entities/cat_breed.dart';
import 'package:equatable/equatable.dart';

abstract class CatBreedsState extends Equatable {
  const CatBreedsState();

  @override
  List<Object> get props => [];
}

class CatBreedsInitial extends CatBreedsState {}

class CatBreedsLoading extends CatBreedsState {}

class CatBreedsLoaded extends CatBreedsState {
  final List<CatBreed> breeds;

  const CatBreedsLoaded(this.breeds);

  @override
  List<Object> get props => [breeds];
}

class CatBreedsError extends CatBreedsState {
  final Failure failure;

  const CatBreedsError(this.failure);

  @override
  List<Object> get props => [failure];
}
