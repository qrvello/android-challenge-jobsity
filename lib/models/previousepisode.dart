import 'package:freezed_annotation/freezed_annotation.dart';

part 'previousepisode.freezed.dart';
part 'previousepisode.g.dart';

@freezed
class Previousepisode with _$Previousepisode {
  factory Previousepisode({
    String? href,
  }) = _Previousepisode;

  factory Previousepisode.fromJson(Map<String, dynamic> json) =>
      _$PreviousepisodeFromJson(json);
}
