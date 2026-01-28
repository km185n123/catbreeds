import 'package:catbreeds/features/landing/domain/usecases/get_cat_breeds.dart';
import 'package:catbreeds/features/landing/presentation/bloc/cat_breeds_event.dart';
import 'package:catbreeds/features/landing/presentation/bloc/cat_breeds_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CatBreedsBloc extends Bloc<CatBreedsEvent, CatBreedsState> {
  final GetCatBreeds getCatBreeds;

  CatBreedsBloc(this.getCatBreeds) : super(CatBreedsInitial()) {
    on<CatBreedsStarted>(_onStarted);
  }

  Future<void> _onStarted(
    CatBreedsStarted event,
    Emitter<CatBreedsState> emit,
  ) async {
    emit(CatBreedsLoading());
    final result = await getCatBreeds();
    result.fold(
      (failure) => emit(CatBreedsError(failure)),
      (breeds) => emit(CatBreedsLoaded(breeds)),
    );
  }
}
