// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'previousepisode.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Previousepisode _$PreviousepisodeFromJson(Map<String, dynamic> json) {
  return _Previousepisode.fromJson(json);
}

/// @nodoc
class _$PreviousepisodeTearOff {
  const _$PreviousepisodeTearOff();

  _Previousepisode call({String? href}) {
    return _Previousepisode(
      href: href,
    );
  }

  Previousepisode fromJson(Map<String, Object> json) {
    return Previousepisode.fromJson(json);
  }
}

/// @nodoc
const $Previousepisode = _$PreviousepisodeTearOff();

/// @nodoc
mixin _$Previousepisode {
  String? get href => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PreviousepisodeCopyWith<Previousepisode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreviousepisodeCopyWith<$Res> {
  factory $PreviousepisodeCopyWith(
          Previousepisode value, $Res Function(Previousepisode) then) =
      _$PreviousepisodeCopyWithImpl<$Res>;
  $Res call({String? href});
}

/// @nodoc
class _$PreviousepisodeCopyWithImpl<$Res>
    implements $PreviousepisodeCopyWith<$Res> {
  _$PreviousepisodeCopyWithImpl(this._value, this._then);

  final Previousepisode _value;
  // ignore: unused_field
  final $Res Function(Previousepisode) _then;

  @override
  $Res call({
    Object? href = freezed,
  }) {
    return _then(_value.copyWith(
      href: href == freezed
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$PreviousepisodeCopyWith<$Res>
    implements $PreviousepisodeCopyWith<$Res> {
  factory _$PreviousepisodeCopyWith(
          _Previousepisode value, $Res Function(_Previousepisode) then) =
      __$PreviousepisodeCopyWithImpl<$Res>;
  @override
  $Res call({String? href});
}

/// @nodoc
class __$PreviousepisodeCopyWithImpl<$Res>
    extends _$PreviousepisodeCopyWithImpl<$Res>
    implements _$PreviousepisodeCopyWith<$Res> {
  __$PreviousepisodeCopyWithImpl(
      _Previousepisode _value, $Res Function(_Previousepisode) _then)
      : super(_value, (v) => _then(v as _Previousepisode));

  @override
  _Previousepisode get _value => super._value as _Previousepisode;

  @override
  $Res call({
    Object? href = freezed,
  }) {
    return _then(_Previousepisode(
      href: href == freezed
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Previousepisode implements _Previousepisode {
  _$_Previousepisode({this.href});

  factory _$_Previousepisode.fromJson(Map<String, dynamic> json) =>
      _$_$_PreviousepisodeFromJson(json);

  @override
  final String? href;

  @override
  String toString() {
    return 'Previousepisode(href: $href)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Previousepisode &&
            (identical(other.href, href) ||
                const DeepCollectionEquality().equals(other.href, href)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(href);

  @JsonKey(ignore: true)
  @override
  _$PreviousepisodeCopyWith<_Previousepisode> get copyWith =>
      __$PreviousepisodeCopyWithImpl<_Previousepisode>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PreviousepisodeToJson(this);
  }
}

abstract class _Previousepisode implements Previousepisode {
  factory _Previousepisode({String? href}) = _$_Previousepisode;

  factory _Previousepisode.fromJson(Map<String, dynamic> json) =
      _$_Previousepisode.fromJson;

  @override
  String? get href => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PreviousepisodeCopyWith<_Previousepisode> get copyWith =>
      throw _privateConstructorUsedError;
}
