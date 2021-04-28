// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'single_border.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SingleBorder _$SingleBorderFromJson(Map<String, dynamic> json) {
  return _SingleBorder.fromJson(json);
}

/// @nodoc
class _$SingleBorderTearOff {
  const _$SingleBorderTearOff();

  _SingleBorder call(
      {@JsonKey(name: 'style') String? rawStyle,
      int? width,
      required RgbColor color,
      required BackgroundColorStyle colorStyle}) {
    return _SingleBorder(
      rawStyle: rawStyle,
      width: width,
      color: color,
      colorStyle: colorStyle,
    );
  }

  SingleBorder fromJson(Map<String, Object> json) {
    return SingleBorder.fromJson(json);
  }
}

/// @nodoc
const $SingleBorder = _$SingleBorderTearOff();

/// @nodoc
mixin _$SingleBorder {
  @JsonKey(name: 'style')
  String? get rawStyle => throw _privateConstructorUsedError;
  int? get width => throw _privateConstructorUsedError;
  RgbColor get color => throw _privateConstructorUsedError;
  BackgroundColorStyle get colorStyle => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SingleBorderCopyWith<SingleBorder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleBorderCopyWith<$Res> {
  factory $SingleBorderCopyWith(
          SingleBorder value, $Res Function(SingleBorder) then) =
      _$SingleBorderCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'style') String? rawStyle,
      int? width,
      RgbColor color,
      BackgroundColorStyle colorStyle});

  $RgbColorCopyWith<$Res> get color;
  $BackgroundColorStyleCopyWith<$Res> get colorStyle;
}

/// @nodoc
class _$SingleBorderCopyWithImpl<$Res> implements $SingleBorderCopyWith<$Res> {
  _$SingleBorderCopyWithImpl(this._value, this._then);

  final SingleBorder _value;
  // ignore: unused_field
  final $Res Function(SingleBorder) _then;

  @override
  $Res call({
    Object? rawStyle = freezed,
    Object? width = freezed,
    Object? color = freezed,
    Object? colorStyle = freezed,
  }) {
    return _then(_value.copyWith(
      rawStyle: rawStyle == freezed
          ? _value.rawStyle
          : rawStyle // ignore: cast_nullable_to_non_nullable
              as String?,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as RgbColor,
      colorStyle: colorStyle == freezed
          ? _value.colorStyle
          : colorStyle // ignore: cast_nullable_to_non_nullable
              as BackgroundColorStyle,
    ));
  }

  @override
  $RgbColorCopyWith<$Res> get color {
    return $RgbColorCopyWith<$Res>(_value.color, (value) {
      return _then(_value.copyWith(color: value));
    });
  }

  @override
  $BackgroundColorStyleCopyWith<$Res> get colorStyle {
    return $BackgroundColorStyleCopyWith<$Res>(_value.colorStyle, (value) {
      return _then(_value.copyWith(colorStyle: value));
    });
  }
}

/// @nodoc
abstract class _$SingleBorderCopyWith<$Res>
    implements $SingleBorderCopyWith<$Res> {
  factory _$SingleBorderCopyWith(
          _SingleBorder value, $Res Function(_SingleBorder) then) =
      __$SingleBorderCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'style') String? rawStyle,
      int? width,
      RgbColor color,
      BackgroundColorStyle colorStyle});

  @override
  $RgbColorCopyWith<$Res> get color;
  @override
  $BackgroundColorStyleCopyWith<$Res> get colorStyle;
}

/// @nodoc
class __$SingleBorderCopyWithImpl<$Res> extends _$SingleBorderCopyWithImpl<$Res>
    implements _$SingleBorderCopyWith<$Res> {
  __$SingleBorderCopyWithImpl(
      _SingleBorder _value, $Res Function(_SingleBorder) _then)
      : super(_value, (v) => _then(v as _SingleBorder));

  @override
  _SingleBorder get _value => super._value as _SingleBorder;

  @override
  $Res call({
    Object? rawStyle = freezed,
    Object? width = freezed,
    Object? color = freezed,
    Object? colorStyle = freezed,
  }) {
    return _then(_SingleBorder(
      rawStyle: rawStyle == freezed
          ? _value.rawStyle
          : rawStyle // ignore: cast_nullable_to_non_nullable
              as String?,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as RgbColor,
      colorStyle: colorStyle == freezed
          ? _value.colorStyle
          : colorStyle // ignore: cast_nullable_to_non_nullable
              as BackgroundColorStyle,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SingleBorder extends _SingleBorder {
  const _$_SingleBorder(
      {@JsonKey(name: 'style') this.rawStyle,
      this.width,
      required this.color,
      required this.colorStyle})
      : super._();

  factory _$_SingleBorder.fromJson(Map<String, dynamic> json) =>
      _$_$_SingleBorderFromJson(json);

  @override
  @JsonKey(name: 'style')
  final String? rawStyle;
  @override
  final int? width;
  @override
  final RgbColor color;
  @override
  final BackgroundColorStyle colorStyle;

  @override
  String toString() {
    return 'SingleBorder(rawStyle: $rawStyle, width: $width, color: $color, colorStyle: $colorStyle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SingleBorder &&
            (identical(other.rawStyle, rawStyle) ||
                const DeepCollectionEquality()
                    .equals(other.rawStyle, rawStyle)) &&
            (identical(other.width, width) ||
                const DeepCollectionEquality().equals(other.width, width)) &&
            (identical(other.color, color) ||
                const DeepCollectionEquality().equals(other.color, color)) &&
            (identical(other.colorStyle, colorStyle) ||
                const DeepCollectionEquality()
                    .equals(other.colorStyle, colorStyle)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(rawStyle) ^
      const DeepCollectionEquality().hash(width) ^
      const DeepCollectionEquality().hash(color) ^
      const DeepCollectionEquality().hash(colorStyle);

  @JsonKey(ignore: true)
  @override
  _$SingleBorderCopyWith<_SingleBorder> get copyWith =>
      __$SingleBorderCopyWithImpl<_SingleBorder>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SingleBorderToJson(this);
  }
}

abstract class _SingleBorder extends SingleBorder {
  const factory _SingleBorder(
      {@JsonKey(name: 'style') String? rawStyle,
      int? width,
      required RgbColor color,
      required BackgroundColorStyle colorStyle}) = _$_SingleBorder;
  const _SingleBorder._() : super._();

  factory _SingleBorder.fromJson(Map<String, dynamic> json) =
      _$_SingleBorder.fromJson;

  @override
  @JsonKey(name: 'style')
  String? get rawStyle => throw _privateConstructorUsedError;
  @override
  int? get width => throw _privateConstructorUsedError;
  @override
  RgbColor get color => throw _privateConstructorUsedError;
  @override
  BackgroundColorStyle get colorStyle => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SingleBorderCopyWith<_SingleBorder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$StyleTearOff {
  const _$StyleTearOff();

  _StyleSolid solid() {
    return const _StyleSolid();
  }

  _StyleSolidThick solidThick() {
    return const _StyleSolidThick();
  }

  _StyleDashed dashed() {
    return const _StyleDashed();
  }
}

/// @nodoc
const $Style = _$StyleTearOff();

/// @nodoc
mixin _$Style {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() solid,
    required TResult Function() solidThick,
    required TResult Function() dashed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? solid,
    TResult Function()? solidThick,
    TResult Function()? dashed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StyleSolid value) solid,
    required TResult Function(_StyleSolidThick value) solidThick,
    required TResult Function(_StyleDashed value) dashed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StyleSolid value)? solid,
    TResult Function(_StyleSolidThick value)? solidThick,
    TResult Function(_StyleDashed value)? dashed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StyleCopyWith<$Res> {
  factory $StyleCopyWith(Style value, $Res Function(Style) then) =
      _$StyleCopyWithImpl<$Res>;
}

/// @nodoc
class _$StyleCopyWithImpl<$Res> implements $StyleCopyWith<$Res> {
  _$StyleCopyWithImpl(this._value, this._then);

  final Style _value;
  // ignore: unused_field
  final $Res Function(Style) _then;
}

/// @nodoc
abstract class _$StyleSolidCopyWith<$Res> {
  factory _$StyleSolidCopyWith(
          _StyleSolid value, $Res Function(_StyleSolid) then) =
      __$StyleSolidCopyWithImpl<$Res>;
}

/// @nodoc
class __$StyleSolidCopyWithImpl<$Res> extends _$StyleCopyWithImpl<$Res>
    implements _$StyleSolidCopyWith<$Res> {
  __$StyleSolidCopyWithImpl(
      _StyleSolid _value, $Res Function(_StyleSolid) _then)
      : super(_value, (v) => _then(v as _StyleSolid));

  @override
  _StyleSolid get _value => super._value as _StyleSolid;
}

/// @nodoc

@protected
class _$_StyleSolid implements _StyleSolid {
  const _$_StyleSolid();

  @override
  String toString() {
    return 'Style.solid()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _StyleSolid);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() solid,
    required TResult Function() solidThick,
    required TResult Function() dashed,
  }) {
    return solid();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? solid,
    TResult Function()? solidThick,
    TResult Function()? dashed,
    required TResult orElse(),
  }) {
    if (solid != null) {
      return solid();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StyleSolid value) solid,
    required TResult Function(_StyleSolidThick value) solidThick,
    required TResult Function(_StyleDashed value) dashed,
  }) {
    return solid(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StyleSolid value)? solid,
    TResult Function(_StyleSolidThick value)? solidThick,
    TResult Function(_StyleDashed value)? dashed,
    required TResult orElse(),
  }) {
    if (solid != null) {
      return solid(this);
    }
    return orElse();
  }
}

abstract class _StyleSolid implements Style {
  const factory _StyleSolid() = _$_StyleSolid;
}

/// @nodoc
abstract class _$StyleSolidThickCopyWith<$Res> {
  factory _$StyleSolidThickCopyWith(
          _StyleSolidThick value, $Res Function(_StyleSolidThick) then) =
      __$StyleSolidThickCopyWithImpl<$Res>;
}

/// @nodoc
class __$StyleSolidThickCopyWithImpl<$Res> extends _$StyleCopyWithImpl<$Res>
    implements _$StyleSolidThickCopyWith<$Res> {
  __$StyleSolidThickCopyWithImpl(
      _StyleSolidThick _value, $Res Function(_StyleSolidThick) _then)
      : super(_value, (v) => _then(v as _StyleSolidThick));

  @override
  _StyleSolidThick get _value => super._value as _StyleSolidThick;
}

/// @nodoc

@protected
class _$_StyleSolidThick implements _StyleSolidThick {
  const _$_StyleSolidThick();

  @override
  String toString() {
    return 'Style.solidThick()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _StyleSolidThick);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() solid,
    required TResult Function() solidThick,
    required TResult Function() dashed,
  }) {
    return solidThick();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? solid,
    TResult Function()? solidThick,
    TResult Function()? dashed,
    required TResult orElse(),
  }) {
    if (solidThick != null) {
      return solidThick();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StyleSolid value) solid,
    required TResult Function(_StyleSolidThick value) solidThick,
    required TResult Function(_StyleDashed value) dashed,
  }) {
    return solidThick(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StyleSolid value)? solid,
    TResult Function(_StyleSolidThick value)? solidThick,
    TResult Function(_StyleDashed value)? dashed,
    required TResult orElse(),
  }) {
    if (solidThick != null) {
      return solidThick(this);
    }
    return orElse();
  }
}

abstract class _StyleSolidThick implements Style {
  const factory _StyleSolidThick() = _$_StyleSolidThick;
}

/// @nodoc
abstract class _$StyleDashedCopyWith<$Res> {
  factory _$StyleDashedCopyWith(
          _StyleDashed value, $Res Function(_StyleDashed) then) =
      __$StyleDashedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StyleDashedCopyWithImpl<$Res> extends _$StyleCopyWithImpl<$Res>
    implements _$StyleDashedCopyWith<$Res> {
  __$StyleDashedCopyWithImpl(
      _StyleDashed _value, $Res Function(_StyleDashed) _then)
      : super(_value, (v) => _then(v as _StyleDashed));

  @override
  _StyleDashed get _value => super._value as _StyleDashed;
}

/// @nodoc

@protected
class _$_StyleDashed implements _StyleDashed {
  const _$_StyleDashed();

  @override
  String toString() {
    return 'Style.dashed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _StyleDashed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() solid,
    required TResult Function() solidThick,
    required TResult Function() dashed,
  }) {
    return dashed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? solid,
    TResult Function()? solidThick,
    TResult Function()? dashed,
    required TResult orElse(),
  }) {
    if (dashed != null) {
      return dashed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StyleSolid value) solid,
    required TResult Function(_StyleSolidThick value) solidThick,
    required TResult Function(_StyleDashed value) dashed,
  }) {
    return dashed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StyleSolid value)? solid,
    TResult Function(_StyleSolidThick value)? solidThick,
    TResult Function(_StyleDashed value)? dashed,
    required TResult orElse(),
  }) {
    if (dashed != null) {
      return dashed(this);
    }
    return orElse();
  }
}

abstract class _StyleDashed implements Style {
  const factory _StyleDashed() = _$_StyleDashed;
}
