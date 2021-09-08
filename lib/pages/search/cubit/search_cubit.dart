import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tv_series/models/show.dart';
import 'package:tv_series/services/i_shows_repository.dart';

part 'search_state.dart';
part 'search_cubit.freezed.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this._showsRepository) : super(const SearchState.initial());
  final IShowsRepository _showsRepository;
  Future<void> search(String query) async {
    if (query.trim().isEmpty) return;
    try {
      emit(const SearchState.loading());
      final List<Show> shows = await _showsRepository.searchShows(query);
      emit(SearchState.loaded(shows));
    } catch (e) {
      emit(SearchState.error(e.toString()));
    }
  }
}
