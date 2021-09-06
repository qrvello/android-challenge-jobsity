// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'self.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Self _$SelfFromJson(Map<String, dynamic> json) {
  return _Self.fromJson(json);
}

/// @nodoc
class _$SelfTearOff {
  const _$SelfTearOff();

  _Self call({String? href}) {
    return _Self(
      href: href,
    );
  }

  Self fromJson(Map<String, Object> json) {
    return Self.fromJson(json);
  }
}

/// @nodoc
const $Self = _$SelfTearOff();

/// @nodoc
mixin _$Self {
  String? get href => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SelfCopyWith<Self> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelfCopyWith<$Res> {
  factory $SelfCopyWith(Self value, $Res Function(Self) then) =
      _$SelfCopyWithImpl<$Res>;
  $Res call({String? href});
}

/// @nodoc
class _$SelfCopyWithImpl<$Res> implements $SelfCopyWith<$Res> {
  _$SelfCopyWithImpl(this._value, this._then);

  final Self _value;
  // ignore: unused_field
  final $Res Function(Self) _then;

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
abstract class _$SelfCopyWith<$Res> implements $SelfCopyWith<$Res> {
  factory _$SelfCopyWith(_Self value, $Res Function(_Self) then) =
      __$SelfCopyWithImpl<$Res>;
  @override
  $Res call({String? href});
}

/// @nodoc
class __$SelfCopyWithImpl<$Res> extends _$SelfCopyWithImpl<$Res>
    implements _$SelfCopyWith<$Res> {
  __$SelfCopyWithImpl(_Self _value, $Res Function(_Self) _then)
      : super(_value, (v) => _then(v as _Self));

  @override
  _Self get _value => super._value as _Self;

  @override
  $Res call({
    Object? href = freezed,
  }) {
    return _then(_Self(
      href: href == freezed
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Self implements _Self {
  _$_Self({this.href});

  factory _$_Self.fromJson(Map<String, dynamic> json) =>
      _$_$_SelfFromJson(json);

  @override
  final String? href;

  @override
  String toString() {
    return 'Self(href: $href)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Self &&
            (identical(other.href, href) ||
                const DeepCollectionEquality().equals(other.href, href)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(href);

  @JsonKey(ignore: true)
  @override
  _$SelfCopyWith<_Self> get copyWith =>
      __$SelfCopyWithImpl<_Self>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SelfToJson(this);
  }
}

abstract class _Self implements Self {
  factory _Self({String? href}) = _$_Self;

  factory _Self.fromJson(Map<String, dynamic> json) = _$_Self.fromJson;

  @override
  String? get href => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SelfCopyWith<_Self> get copyWith => throw _privateConstructorUsedError;
}
