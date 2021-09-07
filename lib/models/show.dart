import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:html/parser.dart';

import 'externals.dart';
import 'image.dart';
import 'links.dart';
import 'network.dart';
import 'rating.dart';
import 'schedule.dart';

part 'show.freezed.dart';
part 'show.g.dart';

@freezed
class Show with _$Show {
  factory Show({
    int? id,
    String? url,
    String? name,
    String? type,
    String? language,
    List<String>? genres,
    String? status,
    int? runtime,
    int? averageRuntime,
    String? premiered,
    String? officialSite,
    Schedule? schedule,
    Rating? rating,
    int? weight,
    Network? network,
    Externals? externals,
    Image? image,
    String? summary,
    int? updated,
    @JsonKey(name: '_links') Links? links,
  }) = _Show;

  factory Show.fromJson(Map<String, dynamic> json) => _$ShowFromJson(json);
}
