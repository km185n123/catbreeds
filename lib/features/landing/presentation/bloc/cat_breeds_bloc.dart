import 'package:catbreeds/features/landing/domain/entities/cat_breed.dart';
import 'package:catbreeds/features/landing/domain/usecases/get_cat_breeds.dart';
import 'package:catbreeds/features/landing/presentation/bloc/cat_breeds_event.dart';
import 'package:catbreeds/features/landing/presentation/bloc/cat_breeds_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CatBreedsBloc extends Bloc<CatBreedsEvent, CatBreedsState> {
  final GetCatBreeds getCatBreeds;

  List<CatBreed> _allBreeds = [];

  CatBreedsBloc(this.getCatBreeds) : super(CatBreedsInitial()) {
    on<CatBreedsStarted>(_onStarted);
    on<CatBreedsSearch>(_onSearch);
  }

  Future<void> _onStarted(
    CatBreedsStarted event,
    Emitter<CatBreedsState> emit,
  ) async {
    emit(CatBreedsLoading());
    final result = await getCatBreeds();
    result.fold((failure) => emit(CatBreedsError(failure)), (breeds) {
      _allBreeds = breeds;
      emit(CatBreedsLoaded(breeds));
    });
  }

  void _onSearch(CatBreedsSearch event, Emitter<CatBreedsState> emit) {
    if (state is! CatBreedsLoaded) return;

    if (event.query.isEmpty) {
      emit(CatBreedsLoaded(_allBreeds));
      return;
    }

    final filteredBreeds = _allBreeds
        .where(
          (breed) =>
              breed.name.toLowerCase().contains(event.query.toLowerCase()),
        )
        .toList();

    emit(CatBreedsLoaded(filteredBreeds));
  }
}
