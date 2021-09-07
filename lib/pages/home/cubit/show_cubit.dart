import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tv_series/models/show.dart';
import 'package:tv_series/services/api.dart';

part 'show_state.dart';
part 'show_cubit.freezed.dart';

class ShowCubit extends Cubit<ShowState> {
  ShowCubit(this._api) : super(const ShowState.initial());

  final Api _api;

  Future<void> init() async {
    try {
      emit(const ShowState.loading());

      final shows = await _api.getShows();

      emit(ShowState.loaded(shows));
    } catch (e) {
      emit(ShowState.error(e.toString()));
    }
  }
}
