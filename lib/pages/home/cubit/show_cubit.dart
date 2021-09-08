import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tv_series/models/show.dart';
import 'package:tv_series/services/i_shows_repository.dart';

part 'show_state.dart';
part 'show_cubit.freezed.dart';

class ShowCubit extends Cubit<ShowState> {
  ShowCubit(this._showsRepository) : super(const ShowState.initial());

  final IShowsRepository _showsRepository;

  Future<void> init() async {
    try {
      emit(const ShowState.loading());

      final shows = await _showsRepository.getShows();

      emit(ShowState.loaded(shows));
    } catch (e) {
      emit(ShowState.error(e.toString()));
    }
  }
}
