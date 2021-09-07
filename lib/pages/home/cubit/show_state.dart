part of 'show_cubit.dart';

@freezed
abstract class ShowState with _$ShowState {
  const factory ShowState.initial() = _Initial;

  const factory ShowState.loading() = _Loading;

  const factory ShowState.loaded(List<Show> shows) = _Loaded;

  const factory ShowState.error(String message) = _Error;
}
