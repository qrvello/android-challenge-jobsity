// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Schedule _$_$_ScheduleFromJson(Map<String, dynamic> json) {
  return _$_Schedule(
    time: json['time'] as String?,
    days: (json['days'] as List<dynamic>?)?.map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$_$_ScheduleToJson(_$_Schedule instance) =>
    <String, dynamic>{
      'time': instance.time,
      'days': instance.days,
    };
