import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tv_series/models/episode.dart';
import 'package:tv_series/services/i_shows_repository.dart';

part 'show_details_state.dart';
part 'show_details_cubit.freezed.dart';

class ShowDetailsCubit extends Cubit<ShowDetailsState> {
  ShowDetailsCubit(this._showsRepository)
      : super(const ShowDetailsState.initial());

  final IShowsRepository _showsRepository;

  Future<void> showDetails(int showId) async {
    try {
      emit(const ShowDetailsState.loading());

      final List<Episode> episodes = await _showsRepository.getEpisodes(showId);

      emit(ShowDetailsState.loaded(episodes));
    } catch (e) {
      emit(ShowDetailsState.error(e.toString()));
    }
  }
}
