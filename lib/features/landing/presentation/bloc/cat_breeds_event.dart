import 'package:equatable/equatable.dart';

abstract class CatBreedsEvent extends Equatable {
  const CatBreedsEvent();

  @override
  List<Object> get props => [];
}

class CatBreedsStarted extends CatBreedsEvent {}

class CatBreedsSearch extends CatBreedsEvent {
  final String query;

  const CatBreedsSearch(this.query);

  @override
  List<Object> get props => [query];
}
