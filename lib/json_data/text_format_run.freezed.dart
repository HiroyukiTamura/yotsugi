// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'text_format_run.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TextFormatRun _$TextFormatRunFromJson(Map<String, dynamic> json) {
  return _TextFormatRun.fromJson(json);
}

/// @nodoc
class _$TextFormatRunTearOff {
  const _$TextFormatRunTearOff();

  _TextFormatRun call({required TextFormatRunFormat format, int? startIndex}) {
    return _TextFormatRun(
      format: format,
      startIndex: startIndex,
    );
  }

  TextFormatRun fromJson(Map<String, Object> json) {
    return TextFormatRun.fromJson(json);
  }
}

/// @nodoc
const $TextFormatRun = _$TextFormatRunTearOff();

/// @nodoc
mixin _$TextFormatRun {
  TextFormatRunFormat get format => throw _privateConstructorUsedError;
  int? get startIndex => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TextFormatRunCopyWith<TextFormatRun> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextFormatRunCopyWith<$Res> {
  factory $TextFormatRunCopyWith(
          TextFormatRun value, $Res Function(TextFormatRun) then) =
      _$TextFormatRunCopyWithImpl<$Res>;
  $Res call({TextFormatRunFormat format, int? startIndex});

  $TextFormatRunFormatCopyWith<$Res> get format;
}

/// @nodoc
class _$TextFormatRunCopyWithImpl<$Res>
    implements $TextFormatRunCopyWith<$Res> {
  _$TextFormatRunCopyWithImpl(this._value, this._then);

  final TextFormatRun _value;
  // ignore: unused_field
  final $Res Function(TextFormatRun) _then;

  @override
  $Res call({
    Object? format = freezed,
    Object? startIndex = freezed,
  }) {
    return _then(_value.copyWith(
      format: format == freezed
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as TextFormatRunFormat,
      startIndex: startIndex == freezed
          ? _value.startIndex
          : startIndex // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  @override
  $TextFormatRunFormatCopyWith<$Res> get format {
    return $TextFormatRunFormatCopyWith<$Res>(_value.format, (value) {
      return _then(_value.copyWith(format: value));
    });
  }
}

/// @nodoc
abstract class _$TextFormatRunCopyWith<$Res>
    implements $TextFormatRunCopyWith<$Res> {
  factory _$TextFormatRunCopyWith(
          _TextFormatRun value, $Res Function(_TextFormatRun) then) =
      __$TextFormatRunCopyWithImpl<$Res>;
  @override
  $Res call({TextFormatRunFormat format, int? startIndex});

  @override
  $TextFormatRunFormatCopyWith<$Res> get format;
}

/// @nodoc
class __$TextFormatRunCopyWithImpl<$Res>
    extends _$TextFormatRunCopyWithImpl<$Res>
    implements _$TextFormatRunCopyWith<$Res> {
  __$TextFormatRunCopyWithImpl(
      _TextFormatRun _value, $Res Function(_TextFormatRun) _then)
      : super(_value, (v) => _then(v as _TextFormatRun));

  @override
  _TextFormatRun get _value => super._value as _TextFormatRun;

  @override
  $Res call({
    Object? format = freezed,
    Object? startIndex = freezed,
  }) {
    return _then(_TextFormatRun(
      format: format == freezed
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as TextFormatRunFormat,
      startIndex: startIndex == freezed
          ? _value.startIndex
          : startIndex // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TextFormatRun implements _TextFormatRun {
  const _$_TextFormatRun({required this.format, this.startIndex});

  factory _$_TextFormatRun.fromJson(Map<String, dynamic> json) =>
      _$_$_TextFormatRunFromJson(json);

  @override
  final TextFormatRunFormat format;
  @override
  final int? startIndex;

  @override
  String toString() {
    return 'TextFormatRun(format: $format, startIndex: $startIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TextFormatRun &&
            (identical(other.format, format) ||
                const DeepCollectionEquality().equals(other.format, format)) &&
            (identical(other.startIndex, startIndex) ||
                const DeepCollectionEquality()
                    .equals(other.startIndex, startIndex)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(format) ^
      const DeepCollectionEquality().hash(startIndex);

  @JsonKey(ignore: true)
  @override
  _$TextFormatRunCopyWith<_TextFormatRun> get copyWith =>
      __$TextFormatRunCopyWithImpl<_TextFormatRun>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TextFormatRunToJson(this);
  }
}

abstract class _TextFormatRun implements TextFormatRun {
  const factory _TextFormatRun(
      {required TextFormatRunFormat format,
      int? startIndex}) = _$_TextFormatRun;

  factory _TextFormatRun.fromJson(Map<String, dynamic> json) =
      _$_TextFormatRun.fromJson;

  @override
  TextFormatRunFormat get format => throw _privateConstructorUsedError;
  @override
  int? get startIndex => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TextFormatRunCopyWith<_TextFormatRun> get copyWith =>
      throw _privateConstructorUsedError;
}

TextFormatRunFormat _$TextFormatRunFormatFromJson(Map<String, dynamic> json) {
  return _TextFormatRunFormat.fromJson(json);
}

/// @nodoc
class _$TextFormatRunFormatTearOff {
  const _$TextFormatRunFormatTearOff();

  _TextFormatRunFormat call({bool strikethrough = false}) {
    return _TextFormatRunFormat(
      strikethrough: strikethrough,
    );
  }

  TextFormatRunFormat fromJson(Map<String, Object> json) {
    return TextFormatRunFormat.fromJson(json);
  }
}

/// @nodoc
const $TextFormatRunFormat = _$TextFormatRunFormatTearOff();

/// @nodoc
mixin _$TextFormatRunFormat {
  bool get strikethrough => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TextFormatRunFormatCopyWith<TextFormatRunFormat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextFormatRunFormatCopyWith<$Res> {
  factory $TextFormatRunFormatCopyWith(
          TextFormatRunFormat value, $Res Function(TextFormatRunFormat) then) =
      _$TextFormatRunFormatCopyWithImpl<$Res>;
  $Res call({bool strikethrough});
}

/// @nodoc
class _$TextFormatRunFormatCopyWithImpl<$Res>
    implements $TextFormatRunFormatCopyWith<$Res> {
  _$TextFormatRunFormatCopyWithImpl(this._value, this._then);

  final TextFormatRunFormat _value;
  // ignore: unused_field
  final $Res Function(TextFormatRunFormat) _then;

  @override
  $Res call({
    Object? strikethrough = freezed,
  }) {
    return _then(_value.copyWith(
      strikethrough: strikethrough == freezed
          ? _value.strikethrough
          : strikethrough // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$TextFormatRunFormatCopyWith<$Res>
    implements $TextFormatRunFormatCopyWith<$Res> {
  factory _$TextFormatRunFormatCopyWith(_TextFormatRunFormat value,
          $Res Function(_TextFormatRunFormat) then) =
      __$TextFormatRunFormatCopyWithImpl<$Res>;
  @override
  $Res call({bool strikethrough});
}

/// @nodoc
class __$TextFormatRunFormatCopyWithImpl<$Res>
    extends _$TextFormatRunFormatCopyWithImpl<$Res>
    implements _$TextFormatRunFormatCopyWith<$Res> {
  __$TextFormatRunFormatCopyWithImpl(
      _TextFormatRunFormat _value, $Res Function(_TextFormatRunFormat) _then)
      : super(_value, (v) => _then(v as _TextFormatRunFormat));

  @override
  _TextFormatRunFormat get _value => super._value as _TextFormatRunFormat;

  @override
  $Res call({
    Object? strikethrough = freezed,
  }) {
    return _then(_TextFormatRunFormat(
      strikethrough: strikethrough == freezed
          ? _value.strikethrough
          : strikethrough // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TextFormatRunFormat implements _TextFormatRunFormat {
  const _$_TextFormatRunFormat({this.strikethrough = false});

  factory _$_TextFormatRunFormat.fromJson(Map<String, dynamic> json) =>
      _$_$_TextFormatRunFormatFromJson(json);

  @JsonKey(defaultValue: false)
  @override
  final bool strikethrough;

  @override
  String toString() {
    return 'TextFormatRunFormat(strikethrough: $strikethrough)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TextFormatRunFormat &&
            (identical(other.strikethrough, strikethrough) ||
                const DeepCollectionEquality()
                    .equals(other.strikethrough, strikethrough)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(strikethrough);

  @JsonKey(ignore: true)
  @override
  _$TextFormatRunFormatCopyWith<_TextFormatRunFormat> get copyWith =>
      __$TextFormatRunFormatCopyWithImpl<_TextFormatRunFormat>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TextFormatRunFormatToJson(this);
  }
}

abstract class _TextFormatRunFormat implements TextFormatRunFormat {
  const factory _TextFormatRunFormat({bool strikethrough}) =
      _$_TextFormatRunFormat;

  factory _TextFormatRunFormat.fromJson(Map<String, dynamic> json) =
      _$_TextFormatRunFormat.fromJson;

  @override
  bool get strikethrough => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TextFormatRunFormatCopyWith<_TextFormatRunFormat> get copyWith =>
      throw _privateConstructorUsedError;
}

EffectiveFormatTextFormat _$EffectiveFormatTextFormatFromJson(
    Map<String, dynamic> json) {
  return _EffectiveFormatTextFormat.fromJson(json);
}

/// @nodoc
class _$EffectiveFormatTextFormatTearOff {
  const _$EffectiveFormatTextFormatTearOff();

  _EffectiveFormatTextFormat call(
      {required RgbColor foregroundColor,
      int? fontSize,
      bool bold = false,
      bool italic = false,
      bool strikethrough = false,
      bool underline = false,
      required BackgroundColorStyle foregroundColorStyle}) {
    return _EffectiveFormatTextFormat(
      foregroundColor: foregroundColor,
      fontSize: fontSize,
      bold: bold,
      italic: italic,
      strikethrough: strikethrough,
      underline: underline,
      foregroundColorStyle: foregroundColorStyle,
    );
  }

  EffectiveFormatTextFormat fromJson(Map<String, Object> json) {
    return EffectiveFormatTextFormat.fromJson(json);
  }
}

/// @nodoc
const $EffectiveFormatTextFormat = _$EffectiveFormatTextFormatTearOff();

/// @nodoc
mixin _$EffectiveFormatTextFormat {
  RgbColor get foregroundColor =>
      throw _privateConstructorUsedError; //  FontFamily fontFamily,
  int? get fontSize => throw _privateConstructorUsedError;
  bool get bold => throw _privateConstructorUsedError;
  bool get italic => throw _privateConstructorUsedError;
  bool get strikethrough => throw _privateConstructorUsedError;
  bool get underline => throw _privateConstructorUsedError;
  BackgroundColorStyle get foregroundColorStyle =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EffectiveFormatTextFormatCopyWith<EffectiveFormatTextFormat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EffectiveFormatTextFormatCopyWith<$Res> {
  factory $EffectiveFormatTextFormatCopyWith(EffectiveFormatTextFormat value,
          $Res Function(EffectiveFormatTextFormat) then) =
      _$EffectiveFormatTextFormatCopyWithImpl<$Res>;
  $Res call(
      {RgbColor foregroundColor,
      int? fontSize,
      bool bold,
      bool italic,
      bool strikethrough,
      bool underline,
      BackgroundColorStyle foregroundColorStyle});

  $RgbColorCopyWith<$Res> get foregroundColor;
  $BackgroundColorStyleCopyWith<$Res> get foregroundColorStyle;
}

/// @nodoc
class _$EffectiveFormatTextFormatCopyWithImpl<$Res>
    implements $EffectiveFormatTextFormatCopyWith<$Res> {
  _$EffectiveFormatTextFormatCopyWithImpl(this._value, this._then);

  final EffectiveFormatTextFormat _value;
  // ignore: unused_field
  final $Res Function(EffectiveFormatTextFormat) _then;

  @override
  $Res call({
    Object? foregroundColor = freezed,
    Object? fontSize = freezed,
    Object? bold = freezed,
    Object? italic = freezed,
    Object? strikethrough = freezed,
    Object? underline = freezed,
    Object? foregroundColorStyle = freezed,
  }) {
    return _then(_value.copyWith(
      foregroundColor: foregroundColor == freezed
          ? _value.foregroundColor
          : foregroundColor // ignore: cast_nullable_to_non_nullable
              as RgbColor,
      fontSize: fontSize == freezed
          ? _value.fontSize
          : fontSize // ignore: cast_nullable_to_non_nullable
              as int?,
      bold: bold == freezed
          ? _value.bold
          : bold // ignore: cast_nullable_to_non_nullable
              as bool,
      italic: italic == freezed
          ? _value.italic
          : italic // ignore: cast_nullable_to_non_nullable
              as bool,
      strikethrough: strikethrough == freezed
          ? _value.strikethrough
          : strikethrough // ignore: cast_nullable_to_non_nullable
              as bool,
      underline: underline == freezed
          ? _value.underline
          : underline // ignore: cast_nullable_to_non_nullable
              as bool,
      foregroundColorStyle: foregroundColorStyle == freezed
          ? _value.foregroundColorStyle
          : foregroundColorStyle // ignore: cast_nullable_to_non_nullable
              as BackgroundColorStyle,
    ));
  }

  @override
  $RgbColorCopyWith<$Res> get foregroundColor {
    return $RgbColorCopyWith<$Res>(_value.foregroundColor, (value) {
      return _then(_value.copyWith(foregroundColor: value));
    });
  }

  @override
  $BackgroundColorStyleCopyWith<$Res> get foregroundColorStyle {
    return $BackgroundColorStyleCopyWith<$Res>(_value.foregroundColorStyle,
        (value) {
      return _then(_value.copyWith(foregroundColorStyle: value));
    });
  }
}

/// @nodoc
abstract class _$EffectiveFormatTextFormatCopyWith<$Res>
    implements $EffectiveFormatTextFormatCopyWith<$Res> {
  factory _$EffectiveFormatTextFormatCopyWith(_EffectiveFormatTextFormat value,
          $Res Function(_EffectiveFormatTextFormat) then) =
      __$EffectiveFormatTextFormatCopyWithImpl<$Res>;
  @override
  $Res call(
      {RgbColor foregroundColor,
      int? fontSize,
      bool bold,
      bool italic,
      bool strikethrough,
      bool underline,
      BackgroundColorStyle foregroundColorStyle});

  @override
  $RgbColorCopyWith<$Res> get foregroundColor;
  @override
  $BackgroundColorStyleCopyWith<$Res> get foregroundColorStyle;
}

/// @nodoc
class __$EffectiveFormatTextFormatCopyWithImpl<$Res>
    extends _$EffectiveFormatTextFormatCopyWithImpl<$Res>
    implements _$EffectiveFormatTextFormatCopyWith<$Res> {
  __$EffectiveFormatTextFormatCopyWithImpl(_EffectiveFormatTextFormat _value,
      $Res Function(_EffectiveFormatTextFormat) _then)
      : super(_value, (v) => _then(v as _EffectiveFormatTextFormat));

  @override
  _EffectiveFormatTextFormat get _value =>
      super._value as _EffectiveFormatTextFormat;

  @override
  $Res call({
    Object? foregroundColor = freezed,
    Object? fontSize = freezed,
    Object? bold = freezed,
    Object? italic = freezed,
    Object? strikethrough = freezed,
    Object? underline = freezed,
    Object? foregroundColorStyle = freezed,
  }) {
    return _then(_EffectiveFormatTextFormat(
      foregroundColor: foregroundColor == freezed
          ? _value.foregroundColor
          : foregroundColor // ignore: cast_nullable_to_non_nullable
              as RgbColor,
      fontSize: fontSize == freezed
          ? _value.fontSize
          : fontSize // ignore: cast_nullable_to_non_nullable
              as int?,
      bold: bold == freezed
          ? _value.bold
          : bold // ignore: cast_nullable_to_non_nullable
              as bool,
      italic: italic == freezed
          ? _value.italic
          : italic // ignore: cast_nullable_to_non_nullable
              as bool,
      strikethrough: strikethrough == freezed
          ? _value.strikethrough
          : strikethrough // ignore: cast_nullable_to_non_nullable
              as bool,
      underline: underline == freezed
          ? _value.underline
          : underline // ignore: cast_nullable_to_non_nullable
              as bool,
      foregroundColorStyle: foregroundColorStyle == freezed
          ? _value.foregroundColorStyle
          : foregroundColorStyle // ignore: cast_nullable_to_non_nullable
              as BackgroundColorStyle,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EffectiveFormatTextFormat implements _EffectiveFormatTextFormat {
  const _$_EffectiveFormatTextFormat(
      {required this.foregroundColor,
      this.fontSize,
      this.bold = false,
      this.italic = false,
      this.strikethrough = false,
      this.underline = false,
      required this.foregroundColorStyle});

  factory _$_EffectiveFormatTextFormat.fromJson(Map<String, dynamic> json) =>
      _$_$_EffectiveFormatTextFormatFromJson(json);

  @override
  final RgbColor foregroundColor;
  @override //  FontFamily fontFamily,
  final int? fontSize;
  @JsonKey(defaultValue: false)
  @override
  final bool bold;
  @JsonKey(defaultValue: false)
  @override
  final bool italic;
  @JsonKey(defaultValue: false)
  @override
  final bool strikethrough;
  @JsonKey(defaultValue: false)
  @override
  final bool underline;
  @override
  final BackgroundColorStyle foregroundColorStyle;

  @override
  String toString() {
    return 'EffectiveFormatTextFormat(foregroundColor: $foregroundColor, fontSize: $fontSize, bold: $bold, italic: $italic, strikethrough: $strikethrough, underline: $underline, foregroundColorStyle: $foregroundColorStyle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EffectiveFormatTextFormat &&
            (identical(other.foregroundColor, foregroundColor) ||
                const DeepCollectionEquality()
                    .equals(other.foregroundColor, foregroundColor)) &&
            (identical(other.fontSize, fontSize) ||
                const DeepCollectionEquality()
                    .equals(other.fontSize, fontSize)) &&
            (identical(other.bold, bold) ||
                const DeepCollectionEquality().equals(other.bold, bold)) &&
            (identical(other.italic, italic) ||
                const DeepCollectionEquality().equals(other.italic, italic)) &&
            (identical(other.strikethrough, strikethrough) ||
                const DeepCollectionEquality()
                    .equals(other.strikethrough, strikethrough)) &&
            (identical(other.underline, underline) ||
                const DeepCollectionEquality()
                    .equals(other.underline, underline)) &&
            (identical(other.foregroundColorStyle, foregroundColorStyle) ||
                const DeepCollectionEquality()
                    .equals(other.foregroundColorStyle, foregroundColorStyle)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(foregroundColor) ^
      const DeepCollectionEquality().hash(fontSize) ^
      const DeepCollectionEquality().hash(bold) ^
      const DeepCollectionEquality().hash(italic) ^
      const DeepCollectionEquality().hash(strikethrough) ^
      const DeepCollectionEquality().hash(underline) ^
      const DeepCollectionEquality().hash(foregroundColorStyle);

  @JsonKey(ignore: true)
  @override
  _$EffectiveFormatTextFormatCopyWith<_EffectiveFormatTextFormat>
      get copyWith =>
          __$EffectiveFormatTextFormatCopyWithImpl<_EffectiveFormatTextFormat>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_EffectiveFormatTextFormatToJson(this);
  }
}

abstract class _EffectiveFormatTextFormat implements EffectiveFormatTextFormat {
  const factory _EffectiveFormatTextFormat(
          {required RgbColor foregroundColor,
          int? fontSize,
          bool bold,
          bool italic,
          bool strikethrough,
          bool underline,
          required BackgroundColorStyle foregroundColorStyle}) =
      _$_EffectiveFormatTextFormat;

  factory _EffectiveFormatTextFormat.fromJson(Map<String, dynamic> json) =
      _$_EffectiveFormatTextFormat.fromJson;

  @override
  RgbColor get foregroundColor => throw _privateConstructorUsedError;
  @override //  FontFamily fontFamily,
  int? get fontSize => throw _privateConstructorUsedError;
  @override
  bool get bold => throw _privateConstructorUsedError;
  @override
  bool get italic => throw _privateConstructorUsedError;
  @override
  bool get strikethrough => throw _privateConstructorUsedError;
  @override
  bool get underline => throw _privateConstructorUsedError;
  @override
  BackgroundColorStyle get foregroundColorStyle =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EffectiveFormatTextFormatCopyWith<_EffectiveFormatTextFormat>
      get copyWith => throw _privateConstructorUsedError;
}
