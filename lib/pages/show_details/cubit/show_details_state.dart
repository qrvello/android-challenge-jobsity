part of 'show_details_cubit.dart';

@freezed
abstract class ShowDetailsState with _$ShowDetailsState {
  const factory ShowDetailsState.initial() = _Initial;
  const factory ShowDetailsState.loading() = _Loading;
  const factory ShowDetailsState.loaded(List<Episode> episodes) = _Loaded;
  const factory ShowDetailsState.error(String message) = _Error;
}
