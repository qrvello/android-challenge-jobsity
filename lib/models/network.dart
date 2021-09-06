import 'package:freezed_annotation/freezed_annotation.dart';

import 'country.dart';

part 'network.freezed.dart';
part 'network.g.dart';

@freezed
class Network with _$Network {
  factory Network({
    int? id,
    String? name,
    Country? country,
  }) = _Network;

  factory Network.fromJson(Map<String, dynamic> json) =>
      _$NetworkFromJson(json);
}
