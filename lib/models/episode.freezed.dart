// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'episode.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Episode _$EpisodeFromJson(Map<String, dynamic> json) {
  return _Episode.fromJson(json);
}

/// @nodoc
class _$EpisodeTearOff {
  const _$EpisodeTearOff();

  _Episode call(
      {int? id,
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
      @JsonKey(name: '_links') Links? links}) {
    return _Episode(
      id: id,
      url: url,
      name: name,
      season: season,
      number: number,
      type: type,
      airdate: airdate,
      airtime: airtime,
      airstamp: airstamp,
      runtime: runtime,
      image: image,
      summary: summary,
      links: links,
    );
  }

  Episode fromJson(Map<String, Object> json) {
    return Episode.fromJson(json);
  }
}

/// @nodoc
const $Episode = _$EpisodeTearOff();

/// @nodoc
mixin _$Episode {
  int? get id => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get season => throw _privateConstructorUsedError;
  int? get number => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get airdate => throw _privateConstructorUsedError;
  String? get airtime => throw _privateConstructorUsedError;
  DateTime? get airstamp => throw _privateConstructorUsedError;
  int? get runtime => throw _privateConstructorUsedError;
  Image? get image => throw _privateConstructorUsedError;
  String? get summary => throw _privateConstructorUsedError;
  @JsonKey(name: '_links')
  Links? get links => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EpisodeCopyWith<Episode> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodeCopyWith<$Res> {
  factory $EpisodeCopyWith(Episode value, $Res Function(Episode) then) =
      _$EpisodeCopyWithImpl<$Res>;
  $Res call(
      {int? id,
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
      @JsonKey(name: '_links') Links? links});

  $ImageCopyWith<$Res>? get image;
  $LinksCopyWith<$Res>? get links;
}

/// @nodoc
class _$EpisodeCopyWithImpl<$Res> implements $EpisodeCopyWith<$Res> {
  _$EpisodeCopyWithImpl(this._value, this._then);

  final Episode _value;
  // ignore: unused_field
  final $Res Function(Episode) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? url = freezed,
    Object? name = freezed,
    Object? season = freezed,
    Object? number = freezed,
    Object? type = freezed,
    Object? airdate = freezed,
    Object? airtime = freezed,
    Object? airstamp = freezed,
    Object? runtime = freezed,
    Object? image = freezed,
    Object? summary = freezed,
    Object? links = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      season: season == freezed
          ? _value.season
          : season // ignore: cast_nullable_to_non_nullable
              as int?,
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      airdate: airdate == freezed
          ? _value.airdate
          : airdate // ignore: cast_nullable_to_non_nullable
              as String?,
      airtime: airtime == freezed
          ? _value.airtime
          : airtime // ignore: cast_nullable_to_non_nullable
              as String?,
      airstamp: airstamp == freezed
          ? _value.airstamp
          : airstamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      runtime: runtime == freezed
          ? _value.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as int?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Image?,
      summary: summary == freezed
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      links: links == freezed
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as Links?,
    ));
  }

  @override
  $ImageCopyWith<$Res>? get image {
    if (_value.image == null) {
      return null;
    }

    return $ImageCopyWith<$Res>(_value.image!, (value) {
      return _then(_value.copyWith(image: value));
    });
  }

  @override
  $LinksCopyWith<$Res>? get links {
    if (_value.links == null) {
      return null;
    }

    return $LinksCopyWith<$Res>(_value.links!, (value) {
      return _then(_value.copyWith(links: value));
    });
  }
}

/// @nodoc
abstract class _$EpisodeCopyWith<$Res> implements $EpisodeCopyWith<$Res> {
  factory _$EpisodeCopyWith(_Episode value, $Res Function(_Episode) then) =
      __$EpisodeCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
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
      @JsonKey(name: '_links') Links? links});

  @override
  $ImageCopyWith<$Res>? get image;
  @override
  $LinksCopyWith<$Res>? get links;
}

/// @nodoc
class __$EpisodeCopyWithImpl<$Res> extends _$EpisodeCopyWithImpl<$Res>
    implements _$EpisodeCopyWith<$Res> {
  __$EpisodeCopyWithImpl(_Episode _value, $Res Function(_Episode) _then)
      : super(_value, (v) => _then(v as _Episode));

  @override
  _Episode get _value => super._value as _Episode;

  @override
  $Res call({
    Object? id = freezed,
    Object? url = freezed,
    Object? name = freezed,
    Object? season = freezed,
    Object? number = freezed,
    Object? type = freezed,
    Object? airdate = freezed,
    Object? airtime = freezed,
    Object? airstamp = freezed,
    Object? runtime = freezed,
    Object? image = freezed,
    Object? summary = freezed,
    Object? links = freezed,
  }) {
    return _then(_Episode(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      season: season == freezed
          ? _value.season
          : season // ignore: cast_nullable_to_non_nullable
              as int?,
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      airdate: airdate == freezed
          ? _value.airdate
          : airdate // ignore: cast_nullable_to_non_nullable
              as String?,
      airtime: airtime == freezed
          ? _value.airtime
          : airtime // ignore: cast_nullable_to_non_nullable
              as String?,
      airstamp: airstamp == freezed
          ? _value.airstamp
          : airstamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      runtime: runtime == freezed
          ? _value.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as int?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Image?,
      summary: summary == freezed
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      links: links == freezed
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as Links?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Episode implements _Episode {
  _$_Episode(
      {this.id,
      this.url,
      this.name,
      this.season,
      this.number,
      this.type,
      this.airdate,
      this.airtime,
      this.airstamp,
      this.runtime,
      this.image,
      this.summary,
      @JsonKey(name: '_links') this.links});

  factory _$_Episode.fromJson(Map<String, dynamic> json) =>
      _$_$_EpisodeFromJson(json);

  @override
  final int? id;
  @override
  final String? url;
  @override
  final String? name;
  @override
  final int? season;
  @override
  final int? number;
  @override
  final String? type;
  @override
  final String? airdate;
  @override
  final String? airtime;
  @override
  final DateTime? airstamp;
  @override
  final int? runtime;
  @override
  final Image? image;
  @override
  final String? summary;
  @override
  @JsonKey(name: '_links')
  final Links? links;

  @override
  String toString() {
    return 'Episode(id: $id, url: $url, name: $name, season: $season, number: $number, type: $type, airdate: $airdate, airtime: $airtime, airstamp: $airstamp, runtime: $runtime, image: $image, summary: $summary, links: $links)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Episode &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.season, season) ||
                const DeepCollectionEquality().equals(other.season, season)) &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.airdate, airdate) ||
                const DeepCollectionEquality()
                    .equals(other.airdate, airdate)) &&
            (identical(other.airtime, airtime) ||
                const DeepCollectionEquality()
                    .equals(other.airtime, airtime)) &&
            (identical(other.airstamp, airstamp) ||
                const DeepCollectionEquality()
                    .equals(other.airstamp, airstamp)) &&
            (identical(other.runtime, runtime) ||
                const DeepCollectionEquality()
                    .equals(other.runtime, runtime)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.summary, summary) ||
                const DeepCollectionEquality()
                    .equals(other.summary, summary)) &&
            (identical(other.links, links) ||
                const DeepCollectionEquality().equals(other.links, links)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(season) ^
      const DeepCollectionEquality().hash(number) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(airdate) ^
      const DeepCollectionEquality().hash(airtime) ^
      const DeepCollectionEquality().hash(airstamp) ^
      const DeepCollectionEquality().hash(runtime) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(summary) ^
      const DeepCollectionEquality().hash(links);

  @JsonKey(ignore: true)
  @override
  _$EpisodeCopyWith<_Episode> get copyWith =>
      __$EpisodeCopyWithImpl<_Episode>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_EpisodeToJson(this);
  }
}

abstract class _Episode implements Episode {
  factory _Episode(
      {int? id,
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
      @JsonKey(name: '_links') Links? links}) = _$_Episode;

  factory _Episode.fromJson(Map<String, dynamic> json) = _$_Episode.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get url => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  int? get season => throw _privateConstructorUsedError;
  @override
  int? get number => throw _privateConstructorUsedError;
  @override
  String? get type => throw _privateConstructorUsedError;
  @override
  String? get airdate => throw _privateConstructorUsedError;
  @override
  String? get airtime => throw _privateConstructorUsedError;
  @override
  DateTime? get airstamp => throw _privateConstructorUsedError;
  @override
  int? get runtime => throw _privateConstructorUsedError;
  @override
  Image? get image => throw _privateConstructorUsedError;
  @override
  String? get summary => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: '_links')
  Links? get links => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EpisodeCopyWith<_Episode> get copyWith =>
      throw _privateConstructorUsedError;
}
