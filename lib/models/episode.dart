import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:html/parser.dart';

import 'image.dart';
import 'links.dart';

part 'episode.freezed.dart';
part 'episode.g.dart';

@freezed
class Episode with _$Episode {
  factory Episode({
    int? id,
    String? url,
    String? name,
    int? season,
    int? number,
    String? type,
    String? airdate,
    String? airtime,
    DateTime? airstamp,
    int? runtime,
    Image? image,
    String? summary,
    @JsonKey(name: '_links') Links? links,
  }) = _Episode;

  factory Episode.fromJson(Map<String, dynamic> json) =>
      _$EpisodeFromJson(json);
}
