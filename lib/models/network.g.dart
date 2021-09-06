// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Network _$_$_NetworkFromJson(Map<String, dynamic> json) {
  return _$_Network(
    id: json['id'] as int?,
    name: json['name'] as String?,
    country: json['country'] == null
        ? null
        : Country.fromJson(json['country'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_NetworkToJson(_$_Network instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'country': instance.country,
    };
