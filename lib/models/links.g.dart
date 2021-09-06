// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'links.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Links _$_$_LinksFromJson(Map<String, dynamic> json) {
  return _$_Links(
    self: json['self'] == null
        ? null
        : Self.fromJson(json['self'] as Map<String, dynamic>),
    previousepisode: json['previousepisode'] == null
        ? null
        : Previousepisode.fromJson(
            json['previousepisode'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_LinksToJson(_$_Links instance) => <String, dynamic>{
      'self': instance.self,
      'previousepisode': instance.previousepisode,
    };
