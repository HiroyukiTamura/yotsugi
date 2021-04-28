// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'value.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Value _$ValueFromJson(Map<String, dynamic> json) {
  return _Value.fromJson(json);
}

/// @nodoc
class _$ValueTearOff {
  const _$ValueTearOff();

  _Value call(
      {required UserEnteredFormat userEnteredFormat,
      required EffectiveFormat effectiveFormat,
      required EffectiveValueClass userEnteredValue,
      required EffectiveValueClass effectiveValue,
      String? formattedValue,
      List<TextFormatRun> textFormatRuns = const <TextFormatRun>[],
      String? hyperlink}) {
    return _Value(
      userEnteredFormat: userEnteredFormat,
      effectiveFormat: effectiveFormat,
      userEnteredValue: userEnteredValue,
      effectiveValue: effectiveValue,
      formattedValue: formattedValue,
      textFormatRuns: textFormatRuns,
      hyperlink: hyperlink,
    );
  }

  Value fromJson(Map<String, Object> json) {
    return Value.fromJson(json);
  }
}

/// @nodoc
const $Value = _$ValueTearOff();

/// @nodoc
mixin _$Value {
  UserEnteredFormat get userEnteredFormat => throw _privateConstructorUsedError;
  EffectiveFormat get effectiveFormat => throw _privateConstructorUsedError;
  EffectiveValueClass get userEnteredValue =>
      throw _privateConstructorUsedError;
  EffectiveValueClass get effectiveValue => throw _privateConstructorUsedError;
  String? get formattedValue => throw _privateConstructorUsedError;
  List<TextFormatRun> get textFormatRuns => throw _privateConstructorUsedError;
  String? get hyperlink => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ValueCopyWith<Value> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueCopyWith<$Res> {
  factory $ValueCopyWith(Value value, $Res Function(Value) then) =
      _$ValueCopyWithImpl<$Res>;
  $Res call(
      {UserEnteredFormat userEnteredFormat,
      EffectiveFormat effectiveFormat,
      EffectiveValueClass userEnteredValue,
      EffectiveValueClass effectiveValue,
      String? formattedValue,
      List<TextFormatRun> textFormatRuns,
      String? hyperlink});

  $UserEnteredFormatCopyWith<$Res> get userEnteredFormat;
  $EffectiveFormatCopyWith<$Res> get effectiveFormat;
  $EffectiveValueClassCopyWith<$Res> get userEnteredValue;
  $EffectiveValueClassCopyWith<$Res> get effectiveValue;
}

/// @nodoc
class _$ValueCopyWithImpl<$Res> implements $ValueCopyWith<$Res> {
  _$ValueCopyWithImpl(this._value, this._then);

  final Value _value;
  // ignore: unused_field
  final $Res Function(Value) _then;

  @override
  $Res call({
    Object? userEnteredFormat = freezed,
    Object? effectiveFormat = freezed,
    Object? userEnteredValue = freezed,
    Object? effectiveValue = freezed,
    Object? formattedValue = freezed,
    Object? textFormatRuns = freezed,
    Object? hyperlink = freezed,
  }) {
    return _then(_value.copyWith(
      userEnteredFormat: userEnteredFormat == freezed
          ? _value.userEnteredFormat
          : userEnteredFormat // ignore: cast_nullable_to_non_nullable
              as UserEnteredFormat,
      effectiveFormat: effectiveFormat == freezed
          ? _value.effectiveFormat
          : effectiveFormat // ignore: cast_nullable_to_non_nullable
              as EffectiveFormat,
      userEnteredValue: userEnteredValue == freezed
          ? _value.userEnteredValue
          : userEnteredValue // ignore: cast_nullable_to_non_nullable
              as EffectiveValueClass,
      effectiveValue: effectiveValue == freezed
          ? _value.effectiveValue
          : effectiveValue // ignore: cast_nullable_to_non_nullable
              as EffectiveValueClass,
      formattedValue: formattedValue == freezed
          ? _value.formattedValue
          : formattedValue // ignore: cast_nullable_to_non_nullable
              as String?,
      textFormatRuns: textFormatRuns == freezed
          ? _value.textFormatRuns
          : textFormatRuns // ignore: cast_nullable_to_non_nullable
              as List<TextFormatRun>,
      hyperlink: hyperlink == freezed
          ? _value.hyperlink
          : hyperlink // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $UserEnteredFormatCopyWith<$Res> get userEnteredFormat {
    return $UserEnteredFormatCopyWith<$Res>(_value.userEnteredFormat, (value) {
      return _then(_value.copyWith(userEnteredFormat: value));
    });
  }

  @override
  $EffectiveFormatCopyWith<$Res> get effectiveFormat {
    return $EffectiveFormatCopyWith<$Res>(_value.effectiveFormat, (value) {
      return _then(_value.copyWith(effectiveFormat: value));
    });
  }

  @override
  $EffectiveValueClassCopyWith<$Res> get userEnteredValue {
    return $EffectiveValueClassCopyWith<$Res>(_value.userEnteredValue, (value) {
      return _then(_value.copyWith(userEnteredValue: value));
    });
  }

  @override
  $EffectiveValueClassCopyWith<$Res> get effectiveValue {
    return $EffectiveValueClassCopyWith<$Res>(_value.effectiveValue, (value) {
      return _then(_value.copyWith(effectiveValue: value));
    });
  }
}

/// @nodoc
abstract class _$ValueCopyWith<$Res> implements $ValueCopyWith<$Res> {
  factory _$ValueCopyWith(_Value value, $Res Function(_Value) then) =
      __$ValueCopyWithImpl<$Res>;
  @override
  $Res call(
      {UserEnteredFormat userEnteredFormat,
      EffectiveFormat effectiveFormat,
      EffectiveValueClass userEnteredValue,
      EffectiveValueClass effectiveValue,
      String? formattedValue,
      List<TextFormatRun> textFormatRuns,
      String? hyperlink});

  @override
  $UserEnteredFormatCopyWith<$Res> get userEnteredFormat;
  @override
  $EffectiveFormatCopyWith<$Res> get effectiveFormat;
  @override
  $EffectiveValueClassCopyWith<$Res> get userEnteredValue;
  @override
  $EffectiveValueClassCopyWith<$Res> get effectiveValue;
}

/// @nodoc
class __$ValueCopyWithImpl<$Res> extends _$ValueCopyWithImpl<$Res>
    implements _$ValueCopyWith<$Res> {
  __$ValueCopyWithImpl(_Value _value, $Res Function(_Value) _then)
      : super(_value, (v) => _then(v as _Value));

  @override
  _Value get _value => super._value as _Value;

  @override
  $Res call({
    Object? userEnteredFormat = freezed,
    Object? effectiveFormat = freezed,
    Object? userEnteredValue = freezed,
    Object? effectiveValue = freezed,
    Object? formattedValue = freezed,
    Object? textFormatRuns = freezed,
    Object? hyperlink = freezed,
  }) {
    return _then(_Value(
      userEnteredFormat: userEnteredFormat == freezed
          ? _value.userEnteredFormat
          : userEnteredFormat // ignore: cast_nullable_to_non_nullable
              as UserEnteredFormat,
      effectiveFormat: effectiveFormat == freezed
          ? _value.effectiveFormat
          : effectiveFormat // ignore: cast_nullable_to_non_nullable
              as EffectiveFormat,
      userEnteredValue: userEnteredValue == freezed
          ? _value.userEnteredValue
          : userEnteredValue // ignore: cast_nullable_to_non_nullable
              as EffectiveValueClass,
      effectiveValue: effectiveValue == freezed
          ? _value.effectiveValue
          : effectiveValue // ignore: cast_nullable_to_non_nullable
              as EffectiveValueClass,
      formattedValue: formattedValue == freezed
          ? _value.formattedValue
          : formattedValue // ignore: cast_nullable_to_non_nullable
              as String?,
      textFormatRuns: textFormatRuns == freezed
          ? _value.textFormatRuns
          : textFormatRuns // ignore: cast_nullable_to_non_nullable
              as List<TextFormatRun>,
      hyperlink: hyperlink == freezed
          ? _value.hyperlink
          : hyperlink // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Value extends _Value {
  const _$_Value(
      {required this.userEnteredFormat,
      required this.effectiveFormat,
      required this.userEnteredValue,
      required this.effectiveValue,
      this.formattedValue,
      this.textFormatRuns = const <TextFormatRun>[],
      this.hyperlink})
      : super._();

  factory _$_Value.fromJson(Map<String, dynamic> json) =>
      _$_$_ValueFromJson(json);

  @override
  final UserEnteredFormat userEnteredFormat;
  @override
  final EffectiveFormat effectiveFormat;
  @override
  final EffectiveValueClass userEnteredValue;
  @override
  final EffectiveValueClass effectiveValue;
  @override
  final String? formattedValue;
  @JsonKey(defaultValue: const <TextFormatRun>[])
  @override
  final List<TextFormatRun> textFormatRuns;
  @override
  final String? hyperlink;

  @override
  String toString() {
    return 'Value(userEnteredFormat: $userEnteredFormat, effectiveFormat: $effectiveFormat, userEnteredValue: $userEnteredValue, effectiveValue: $effectiveValue, formattedValue: $formattedValue, textFormatRuns: $textFormatRuns, hyperlink: $hyperlink)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Value &&
            (identical(other.userEnteredFormat, userEnteredFormat) ||
                const DeepCollectionEquality()
                    .equals(other.userEnteredFormat, userEnteredFormat)) &&
            (identical(other.effectiveFormat, effectiveFormat) ||
                const DeepCollectionEquality()
                    .equals(other.effectiveFormat, effectiveFormat)) &&
            (identical(other.userEnteredValue, userEnteredValue) ||
                const DeepCollectionEquality()
                    .equals(other.userEnteredValue, userEnteredValue)) &&
            (identical(other.effectiveValue, effectiveValue) ||
                const DeepCollectionEquality()
                    .equals(other.effectiveValue, effectiveValue)) &&
            (identical(other.formattedValue, formattedValue) ||
                const DeepCollectionEquality()
                    .equals(other.formattedValue, formattedValue)) &&
            (identical(other.textFormatRuns, textFormatRuns) ||
                const DeepCollectionEquality()
                    .equals(other.textFormatRuns, textFormatRuns)) &&
            (identical(other.hyperlink, hyperlink) ||
                const DeepCollectionEquality()
                    .equals(other.hyperlink, hyperlink)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userEnteredFormat) ^
      const DeepCollectionEquality().hash(effectiveFormat) ^
      const DeepCollectionEquality().hash(userEnteredValue) ^
      const DeepCollectionEquality().hash(effectiveValue) ^
      const DeepCollectionEquality().hash(formattedValue) ^
      const DeepCollectionEquality().hash(textFormatRuns) ^
      const DeepCollectionEquality().hash(hyperlink);

  @JsonKey(ignore: true)
  @override
  _$ValueCopyWith<_Value> get copyWith =>
      __$ValueCopyWithImpl<_Value>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ValueToJson(this);
  }
}

abstract class _Value extends Value {
  const factory _Value(
      {required UserEnteredFormat userEnteredFormat,
      required EffectiveFormat effectiveFormat,
      required EffectiveValueClass userEnteredValue,
      required EffectiveValueClass effectiveValue,
      String? formattedValue,
      List<TextFormatRun> textFormatRuns,
      String? hyperlink}) = _$_Value;
  const _Value._() : super._();

  factory _Value.fromJson(Map<String, dynamic> json) = _$_Value.fromJson;

  @override
  UserEnteredFormat get userEnteredFormat => throw _privateConstructorUsedError;
  @override
  EffectiveFormat get effectiveFormat => throw _privateConstructorUsedError;
  @override
  EffectiveValueClass get userEnteredValue =>
      throw _privateConstructorUsedError;
  @override
  EffectiveValueClass get effectiveValue => throw _privateConstructorUsedError;
  @override
  String? get formattedValue => throw _privateConstructorUsedError;
  @override
  List<TextFormatRun> get textFormatRuns => throw _privateConstructorUsedError;
  @override
  String? get hyperlink => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ValueCopyWith<_Value> get copyWith => throw _privateConstructorUsedError;
}

UserEnteredFormat _$UserEnteredFormatFromJson(Map<String, dynamic> json) {
  return _UserEnteredFormat.fromJson(json);
}

/// @nodoc
class _$UserEnteredFormatTearOff {
  const _$UserEnteredFormatTearOff();

  _UserEnteredFormat call(
      {String? wrapStrategy,
      @protected
      @JsonKey(name: 'verticalAlignment')
          String? rawVerticalAlignment,
      required UserEnteredFormatTextFormat textFormat,
      required RgbColor backgroundColor,
      required Borders borders,
      @protected
      @JsonKey(name: 'horizontalAlignment')
          String? rawHorizontalAlignment,
      BackgroundColorStyle? backgroundColorStyle,
      @protected
      @JsonKey(name: 'hyperlinkDisplayType')
          String? rawHyperlinkDisplayType}) {
    return _UserEnteredFormat(
      wrapStrategy: wrapStrategy,
      rawVerticalAlignment: rawVerticalAlignment,
      textFormat: textFormat,
      backgroundColor: backgroundColor,
      borders: borders,
      rawHorizontalAlignment: rawHorizontalAlignment,
      backgroundColorStyle: backgroundColorStyle,
      rawHyperlinkDisplayType: rawHyperlinkDisplayType,
    );
  }

  UserEnteredFormat fromJson(Map<String, Object> json) {
    return UserEnteredFormat.fromJson(json);
  }
}

/// @nodoc
const $UserEnteredFormat = _$UserEnteredFormatTearOff();

/// @nodoc
mixin _$UserEnteredFormat {
  String? get wrapStrategy => throw _privateConstructorUsedError;
  @protected
  @JsonKey(name: 'verticalAlignment')
  String? get rawVerticalAlignment => throw _privateConstructorUsedError;
  UserEnteredFormatTextFormat get textFormat =>
      throw _privateConstructorUsedError;
  RgbColor get backgroundColor => throw _privateConstructorUsedError;
  Borders get borders => throw _privateConstructorUsedError;
  @protected
  @JsonKey(name: 'horizontalAlignment')
  String? get rawHorizontalAlignment => throw _privateConstructorUsedError;
  BackgroundColorStyle? get backgroundColorStyle =>
      throw _privateConstructorUsedError;
  @protected
  @JsonKey(name: 'hyperlinkDisplayType')
  String? get rawHyperlinkDisplayType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserEnteredFormatCopyWith<UserEnteredFormat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEnteredFormatCopyWith<$Res> {
  factory $UserEnteredFormatCopyWith(
          UserEnteredFormat value, $Res Function(UserEnteredFormat) then) =
      _$UserEnteredFormatCopyWithImpl<$Res>;
  $Res call(
      {String? wrapStrategy,
      @protected
      @JsonKey(name: 'verticalAlignment')
          String? rawVerticalAlignment,
      UserEnteredFormatTextFormat textFormat,
      RgbColor backgroundColor,
      Borders borders,
      @protected
      @JsonKey(name: 'horizontalAlignment')
          String? rawHorizontalAlignment,
      BackgroundColorStyle? backgroundColorStyle,
      @protected
      @JsonKey(name: 'hyperlinkDisplayType')
          String? rawHyperlinkDisplayType});

  $UserEnteredFormatTextFormatCopyWith<$Res> get textFormat;
  $RgbColorCopyWith<$Res> get backgroundColor;
  $BordersCopyWith<$Res> get borders;
  $BackgroundColorStyleCopyWith<$Res>? get backgroundColorStyle;
}

/// @nodoc
class _$UserEnteredFormatCopyWithImpl<$Res>
    implements $UserEnteredFormatCopyWith<$Res> {
  _$UserEnteredFormatCopyWithImpl(this._value, this._then);

  final UserEnteredFormat _value;
  // ignore: unused_field
  final $Res Function(UserEnteredFormat) _then;

  @override
  $Res call({
    Object? wrapStrategy = freezed,
    Object? rawVerticalAlignment = freezed,
    Object? textFormat = freezed,
    Object? backgroundColor = freezed,
    Object? borders = freezed,
    Object? rawHorizontalAlignment = freezed,
    Object? backgroundColorStyle = freezed,
    Object? rawHyperlinkDisplayType = freezed,
  }) {
    return _then(_value.copyWith(
      wrapStrategy: wrapStrategy == freezed
          ? _value.wrapStrategy
          : wrapStrategy // ignore: cast_nullable_to_non_nullable
              as String?,
      rawVerticalAlignment: rawVerticalAlignment == freezed
          ? _value.rawVerticalAlignment
          : rawVerticalAlignment // ignore: cast_nullable_to_non_nullable
              as String?,
      textFormat: textFormat == freezed
          ? _value.textFormat
          : textFormat // ignore: cast_nullable_to_non_nullable
              as UserEnteredFormatTextFormat,
      backgroundColor: backgroundColor == freezed
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as RgbColor,
      borders: borders == freezed
          ? _value.borders
          : borders // ignore: cast_nullable_to_non_nullable
              as Borders,
      rawHorizontalAlignment: rawHorizontalAlignment == freezed
          ? _value.rawHorizontalAlignment
          : rawHorizontalAlignment // ignore: cast_nullable_to_non_nullable
              as String?,
      backgroundColorStyle: backgroundColorStyle == freezed
          ? _value.backgroundColorStyle
          : backgroundColorStyle // ignore: cast_nullable_to_non_nullable
              as BackgroundColorStyle?,
      rawHyperlinkDisplayType: rawHyperlinkDisplayType == freezed
          ? _value.rawHyperlinkDisplayType
          : rawHyperlinkDisplayType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $UserEnteredFormatTextFormatCopyWith<$Res> get textFormat {
    return $UserEnteredFormatTextFormatCopyWith<$Res>(_value.textFormat,
        (value) {
      return _then(_value.copyWith(textFormat: value));
    });
  }

  @override
  $RgbColorCopyWith<$Res> get backgroundColor {
    return $RgbColorCopyWith<$Res>(_value.backgroundColor, (value) {
      return _then(_value.copyWith(backgroundColor: value));
    });
  }

  @override
  $BordersCopyWith<$Res> get borders {
    return $BordersCopyWith<$Res>(_value.borders, (value) {
      return _then(_value.copyWith(borders: value));
    });
  }

  @override
  $BackgroundColorStyleCopyWith<$Res>? get backgroundColorStyle {
    if (_value.backgroundColorStyle == null) {
      return null;
    }

    return $BackgroundColorStyleCopyWith<$Res>(_value.backgroundColorStyle!,
        (value) {
      return _then(_value.copyWith(backgroundColorStyle: value));
    });
  }
}

/// @nodoc
abstract class _$UserEnteredFormatCopyWith<$Res>
    implements $UserEnteredFormatCopyWith<$Res> {
  factory _$UserEnteredFormatCopyWith(
          _UserEnteredFormat value, $Res Function(_UserEnteredFormat) then) =
      __$UserEnteredFormatCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? wrapStrategy,
      @protected
      @JsonKey(name: 'verticalAlignment')
          String? rawVerticalAlignment,
      UserEnteredFormatTextFormat textFormat,
      RgbColor backgroundColor,
      Borders borders,
      @protected
      @JsonKey(name: 'horizontalAlignment')
          String? rawHorizontalAlignment,
      BackgroundColorStyle? backgroundColorStyle,
      @protected
      @JsonKey(name: 'hyperlinkDisplayType')
          String? rawHyperlinkDisplayType});

  @override
  $UserEnteredFormatTextFormatCopyWith<$Res> get textFormat;
  @override
  $RgbColorCopyWith<$Res> get backgroundColor;
  @override
  $BordersCopyWith<$Res> get borders;
  @override
  $BackgroundColorStyleCopyWith<$Res>? get backgroundColorStyle;
}

/// @nodoc
class __$UserEnteredFormatCopyWithImpl<$Res>
    extends _$UserEnteredFormatCopyWithImpl<$Res>
    implements _$UserEnteredFormatCopyWith<$Res> {
  __$UserEnteredFormatCopyWithImpl(
      _UserEnteredFormat _value, $Res Function(_UserEnteredFormat) _then)
      : super(_value, (v) => _then(v as _UserEnteredFormat));

  @override
  _UserEnteredFormat get _value => super._value as _UserEnteredFormat;

  @override
  $Res call({
    Object? wrapStrategy = freezed,
    Object? rawVerticalAlignment = freezed,
    Object? textFormat = freezed,
    Object? backgroundColor = freezed,
    Object? borders = freezed,
    Object? rawHorizontalAlignment = freezed,
    Object? backgroundColorStyle = freezed,
    Object? rawHyperlinkDisplayType = freezed,
  }) {
    return _then(_UserEnteredFormat(
      wrapStrategy: wrapStrategy == freezed
          ? _value.wrapStrategy
          : wrapStrategy // ignore: cast_nullable_to_non_nullable
              as String?,
      rawVerticalAlignment: rawVerticalAlignment == freezed
          ? _value.rawVerticalAlignment
          : rawVerticalAlignment // ignore: cast_nullable_to_non_nullable
              as String?,
      textFormat: textFormat == freezed
          ? _value.textFormat
          : textFormat // ignore: cast_nullable_to_non_nullable
              as UserEnteredFormatTextFormat,
      backgroundColor: backgroundColor == freezed
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as RgbColor,
      borders: borders == freezed
          ? _value.borders
          : borders // ignore: cast_nullable_to_non_nullable
              as Borders,
      rawHorizontalAlignment: rawHorizontalAlignment == freezed
          ? _value.rawHorizontalAlignment
          : rawHorizontalAlignment // ignore: cast_nullable_to_non_nullable
              as String?,
      backgroundColorStyle: backgroundColorStyle == freezed
          ? _value.backgroundColorStyle
          : backgroundColorStyle // ignore: cast_nullable_to_non_nullable
              as BackgroundColorStyle?,
      rawHyperlinkDisplayType: rawHyperlinkDisplayType == freezed
          ? _value.rawHyperlinkDisplayType
          : rawHyperlinkDisplayType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserEnteredFormat extends _UserEnteredFormat {
  const _$_UserEnteredFormat(
      {this.wrapStrategy,
      @protected
      @JsonKey(name: 'verticalAlignment')
          this.rawVerticalAlignment,
      required this.textFormat,
      required this.backgroundColor,
      required this.borders,
      @protected
      @JsonKey(name: 'horizontalAlignment')
          this.rawHorizontalAlignment,
      this.backgroundColorStyle,
      @protected
      @JsonKey(name: 'hyperlinkDisplayType')
          this.rawHyperlinkDisplayType})
      : super._();

  factory _$_UserEnteredFormat.fromJson(Map<String, dynamic> json) =>
      _$_$_UserEnteredFormatFromJson(json);

  @override
  final String? wrapStrategy;
  @override
  @protected
  @JsonKey(name: 'verticalAlignment')
  final String? rawVerticalAlignment;
  @override
  final UserEnteredFormatTextFormat textFormat;
  @override
  final RgbColor backgroundColor;
  @override
  final Borders borders;
  @override
  @protected
  @JsonKey(name: 'horizontalAlignment')
  final String? rawHorizontalAlignment;
  @override
  final BackgroundColorStyle? backgroundColorStyle;
  @override
  @protected
  @JsonKey(name: 'hyperlinkDisplayType')
  final String? rawHyperlinkDisplayType;

  @override
  String toString() {
    return 'UserEnteredFormat(wrapStrategy: $wrapStrategy, rawVerticalAlignment: $rawVerticalAlignment, textFormat: $textFormat, backgroundColor: $backgroundColor, borders: $borders, rawHorizontalAlignment: $rawHorizontalAlignment, backgroundColorStyle: $backgroundColorStyle, rawHyperlinkDisplayType: $rawHyperlinkDisplayType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserEnteredFormat &&
            (identical(other.wrapStrategy, wrapStrategy) ||
                const DeepCollectionEquality()
                    .equals(other.wrapStrategy, wrapStrategy)) &&
            (identical(other.rawVerticalAlignment, rawVerticalAlignment) ||
                const DeepCollectionEquality().equals(
                    other.rawVerticalAlignment, rawVerticalAlignment)) &&
            (identical(other.textFormat, textFormat) ||
                const DeepCollectionEquality()
                    .equals(other.textFormat, textFormat)) &&
            (identical(other.backgroundColor, backgroundColor) ||
                const DeepCollectionEquality()
                    .equals(other.backgroundColor, backgroundColor)) &&
            (identical(other.borders, borders) ||
                const DeepCollectionEquality()
                    .equals(other.borders, borders)) &&
            (identical(other.rawHorizontalAlignment, rawHorizontalAlignment) ||
                const DeepCollectionEquality().equals(
                    other.rawHorizontalAlignment, rawHorizontalAlignment)) &&
            (identical(other.backgroundColorStyle, backgroundColorStyle) ||
                const DeepCollectionEquality().equals(
                    other.backgroundColorStyle, backgroundColorStyle)) &&
            (identical(
                    other.rawHyperlinkDisplayType, rawHyperlinkDisplayType) ||
                const DeepCollectionEquality().equals(
                    other.rawHyperlinkDisplayType, rawHyperlinkDisplayType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(wrapStrategy) ^
      const DeepCollectionEquality().hash(rawVerticalAlignment) ^
      const DeepCollectionEquality().hash(textFormat) ^
      const DeepCollectionEquality().hash(backgroundColor) ^
      const DeepCollectionEquality().hash(borders) ^
      const DeepCollectionEquality().hash(rawHorizontalAlignment) ^
      const DeepCollectionEquality().hash(backgroundColorStyle) ^
      const DeepCollectionEquality().hash(rawHyperlinkDisplayType);

  @JsonKey(ignore: true)
  @override
  _$UserEnteredFormatCopyWith<_UserEnteredFormat> get copyWith =>
      __$UserEnteredFormatCopyWithImpl<_UserEnteredFormat>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserEnteredFormatToJson(this);
  }
}

abstract class _UserEnteredFormat extends UserEnteredFormat {
  const factory _UserEnteredFormat(
      {String? wrapStrategy,
      @protected
      @JsonKey(name: 'verticalAlignment')
          String? rawVerticalAlignment,
      required UserEnteredFormatTextFormat textFormat,
      required RgbColor backgroundColor,
      required Borders borders,
      @protected
      @JsonKey(name: 'horizontalAlignment')
          String? rawHorizontalAlignment,
      BackgroundColorStyle? backgroundColorStyle,
      @protected
      @JsonKey(name: 'hyperlinkDisplayType')
          String? rawHyperlinkDisplayType}) = _$_UserEnteredFormat;
  const _UserEnteredFormat._() : super._();

  factory _UserEnteredFormat.fromJson(Map<String, dynamic> json) =
      _$_UserEnteredFormat.fromJson;

  @override
  String? get wrapStrategy => throw _privateConstructorUsedError;
  @override
  @protected
  @JsonKey(name: 'verticalAlignment')
  String? get rawVerticalAlignment => throw _privateConstructorUsedError;
  @override
  UserEnteredFormatTextFormat get textFormat =>
      throw _privateConstructorUsedError;
  @override
  RgbColor get backgroundColor => throw _privateConstructorUsedError;
  @override
  Borders get borders => throw _privateConstructorUsedError;
  @override
  @protected
  @JsonKey(name: 'horizontalAlignment')
  String? get rawHorizontalAlignment => throw _privateConstructorUsedError;
  @override
  BackgroundColorStyle? get backgroundColorStyle =>
      throw _privateConstructorUsedError;
  @override
  @protected
  @JsonKey(name: 'hyperlinkDisplayType')
  String? get rawHyperlinkDisplayType => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserEnteredFormatCopyWith<_UserEnteredFormat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$HyperlinkDisplayTypeTearOff {
  const _$HyperlinkDisplayTypeTearOff();

  _HyperlinkDisplayTypePlainText plainText() {
    return const _HyperlinkDisplayTypePlainText();
  }

  _HyperlinkDisplayTypeLinked linked() {
    return const _HyperlinkDisplayTypeLinked();
  }
}

/// @nodoc
const $HyperlinkDisplayType = _$HyperlinkDisplayTypeTearOff();

/// @nodoc
mixin _$HyperlinkDisplayType {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() plainText,
    required TResult Function() linked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? plainText,
    TResult Function()? linked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HyperlinkDisplayTypePlainText value) plainText,
    required TResult Function(_HyperlinkDisplayTypeLinked value) linked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HyperlinkDisplayTypePlainText value)? plainText,
    TResult Function(_HyperlinkDisplayTypeLinked value)? linked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HyperlinkDisplayTypeCopyWith<$Res> {
  factory $HyperlinkDisplayTypeCopyWith(HyperlinkDisplayType value,
          $Res Function(HyperlinkDisplayType) then) =
      _$HyperlinkDisplayTypeCopyWithImpl<$Res>;
}

/// @nodoc
class _$HyperlinkDisplayTypeCopyWithImpl<$Res>
    implements $HyperlinkDisplayTypeCopyWith<$Res> {
  _$HyperlinkDisplayTypeCopyWithImpl(this._value, this._then);

  final HyperlinkDisplayType _value;
  // ignore: unused_field
  final $Res Function(HyperlinkDisplayType) _then;
}

/// @nodoc
abstract class _$HyperlinkDisplayTypePlainTextCopyWith<$Res> {
  factory _$HyperlinkDisplayTypePlainTextCopyWith(
          _HyperlinkDisplayTypePlainText value,
          $Res Function(_HyperlinkDisplayTypePlainText) then) =
      __$HyperlinkDisplayTypePlainTextCopyWithImpl<$Res>;
}

/// @nodoc
class __$HyperlinkDisplayTypePlainTextCopyWithImpl<$Res>
    extends _$HyperlinkDisplayTypeCopyWithImpl<$Res>
    implements _$HyperlinkDisplayTypePlainTextCopyWith<$Res> {
  __$HyperlinkDisplayTypePlainTextCopyWithImpl(
      _HyperlinkDisplayTypePlainText _value,
      $Res Function(_HyperlinkDisplayTypePlainText) _then)
      : super(_value, (v) => _then(v as _HyperlinkDisplayTypePlainText));

  @override
  _HyperlinkDisplayTypePlainText get _value =>
      super._value as _HyperlinkDisplayTypePlainText;
}

/// @nodoc

@protected
class _$_HyperlinkDisplayTypePlainText
    implements _HyperlinkDisplayTypePlainText {
  const _$_HyperlinkDisplayTypePlainText();

  @override
  String toString() {
    return 'HyperlinkDisplayType.plainText()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _HyperlinkDisplayTypePlainText);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() plainText,
    required TResult Function() linked,
  }) {
    return plainText();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? plainText,
    TResult Function()? linked,
    required TResult orElse(),
  }) {
    if (plainText != null) {
      return plainText();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HyperlinkDisplayTypePlainText value) plainText,
    required TResult Function(_HyperlinkDisplayTypeLinked value) linked,
  }) {
    return plainText(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HyperlinkDisplayTypePlainText value)? plainText,
    TResult Function(_HyperlinkDisplayTypeLinked value)? linked,
    required TResult orElse(),
  }) {
    if (plainText != null) {
      return plainText(this);
    }
    return orElse();
  }
}

abstract class _HyperlinkDisplayTypePlainText implements HyperlinkDisplayType {
  const factory _HyperlinkDisplayTypePlainText() =
      _$_HyperlinkDisplayTypePlainText;
}

/// @nodoc
abstract class _$HyperlinkDisplayTypeLinkedCopyWith<$Res> {
  factory _$HyperlinkDisplayTypeLinkedCopyWith(
          _HyperlinkDisplayTypeLinked value,
          $Res Function(_HyperlinkDisplayTypeLinked) then) =
      __$HyperlinkDisplayTypeLinkedCopyWithImpl<$Res>;
}

/// @nodoc
class __$HyperlinkDisplayTypeLinkedCopyWithImpl<$Res>
    extends _$HyperlinkDisplayTypeCopyWithImpl<$Res>
    implements _$HyperlinkDisplayTypeLinkedCopyWith<$Res> {
  __$HyperlinkDisplayTypeLinkedCopyWithImpl(_HyperlinkDisplayTypeLinked _value,
      $Res Function(_HyperlinkDisplayTypeLinked) _then)
      : super(_value, (v) => _then(v as _HyperlinkDisplayTypeLinked));

  @override
  _HyperlinkDisplayTypeLinked get _value =>
      super._value as _HyperlinkDisplayTypeLinked;
}

/// @nodoc

@protected
class _$_HyperlinkDisplayTypeLinked implements _HyperlinkDisplayTypeLinked {
  const _$_HyperlinkDisplayTypeLinked();

  @override
  String toString() {
    return 'HyperlinkDisplayType.linked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _HyperlinkDisplayTypeLinked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() plainText,
    required TResult Function() linked,
  }) {
    return linked();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? plainText,
    TResult Function()? linked,
    required TResult orElse(),
  }) {
    if (linked != null) {
      return linked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HyperlinkDisplayTypePlainText value) plainText,
    required TResult Function(_HyperlinkDisplayTypeLinked value) linked,
  }) {
    return linked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HyperlinkDisplayTypePlainText value)? plainText,
    TResult Function(_HyperlinkDisplayTypeLinked value)? linked,
    required TResult orElse(),
  }) {
    if (linked != null) {
      return linked(this);
    }
    return orElse();
  }
}

abstract class _HyperlinkDisplayTypeLinked implements HyperlinkDisplayType {
  const factory _HyperlinkDisplayTypeLinked() = _$_HyperlinkDisplayTypeLinked;
}
