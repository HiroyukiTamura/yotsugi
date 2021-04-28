// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'spreadsheet_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SpreadSheetData _$SpreadSheetDataFromJson(Map<String, dynamic> json) {
  return _SpreadSheetData.fromJson(json);
}

/// @nodoc
class _$SpreadSheetDataTearOff {
  const _$SpreadSheetDataTearOff();

  _SpreadSheetData call(
      {required String spreadsheetId,
      required List<Sheet> sheets,
      required String spreadsheetUrl}) {
    return _SpreadSheetData(
      spreadsheetId: spreadsheetId,
      sheets: sheets,
      spreadsheetUrl: spreadsheetUrl,
    );
  }

  SpreadSheetData fromJson(Map<String, Object> json) {
    return SpreadSheetData.fromJson(json);
  }
}

/// @nodoc
const $SpreadSheetData = _$SpreadSheetDataTearOff();

/// @nodoc
mixin _$SpreadSheetData {
  String get spreadsheetId =>
      throw _privateConstructorUsedError; // final SpreadSheetDataProps properties;
  List<Sheet> get sheets => throw _privateConstructorUsedError;
  String get spreadsheetUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpreadSheetDataCopyWith<SpreadSheetData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpreadSheetDataCopyWith<$Res> {
  factory $SpreadSheetDataCopyWith(
          SpreadSheetData value, $Res Function(SpreadSheetData) then) =
      _$SpreadSheetDataCopyWithImpl<$Res>;
  $Res call({String spreadsheetId, List<Sheet> sheets, String spreadsheetUrl});
}

/// @nodoc
class _$SpreadSheetDataCopyWithImpl<$Res>
    implements $SpreadSheetDataCopyWith<$Res> {
  _$SpreadSheetDataCopyWithImpl(this._value, this._then);

  final SpreadSheetData _value;
  // ignore: unused_field
  final $Res Function(SpreadSheetData) _then;

  @override
  $Res call({
    Object? spreadsheetId = freezed,
    Object? sheets = freezed,
    Object? spreadsheetUrl = freezed,
  }) {
    return _then(_value.copyWith(
      spreadsheetId: spreadsheetId == freezed
          ? _value.spreadsheetId
          : spreadsheetId // ignore: cast_nullable_to_non_nullable
              as String,
      sheets: sheets == freezed
          ? _value.sheets
          : sheets // ignore: cast_nullable_to_non_nullable
              as List<Sheet>,
      spreadsheetUrl: spreadsheetUrl == freezed
          ? _value.spreadsheetUrl
          : spreadsheetUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SpreadSheetDataCopyWith<$Res>
    implements $SpreadSheetDataCopyWith<$Res> {
  factory _$SpreadSheetDataCopyWith(
          _SpreadSheetData value, $Res Function(_SpreadSheetData) then) =
      __$SpreadSheetDataCopyWithImpl<$Res>;
  @override
  $Res call({String spreadsheetId, List<Sheet> sheets, String spreadsheetUrl});
}

/// @nodoc
class __$SpreadSheetDataCopyWithImpl<$Res>
    extends _$SpreadSheetDataCopyWithImpl<$Res>
    implements _$SpreadSheetDataCopyWith<$Res> {
  __$SpreadSheetDataCopyWithImpl(
      _SpreadSheetData _value, $Res Function(_SpreadSheetData) _then)
      : super(_value, (v) => _then(v as _SpreadSheetData));

  @override
  _SpreadSheetData get _value => super._value as _SpreadSheetData;

  @override
  $Res call({
    Object? spreadsheetId = freezed,
    Object? sheets = freezed,
    Object? spreadsheetUrl = freezed,
  }) {
    return _then(_SpreadSheetData(
      spreadsheetId: spreadsheetId == freezed
          ? _value.spreadsheetId
          : spreadsheetId // ignore: cast_nullable_to_non_nullable
              as String,
      sheets: sheets == freezed
          ? _value.sheets
          : sheets // ignore: cast_nullable_to_non_nullable
              as List<Sheet>,
      spreadsheetUrl: spreadsheetUrl == freezed
          ? _value.spreadsheetUrl
          : spreadsheetUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SpreadSheetData implements _SpreadSheetData {
  const _$_SpreadSheetData(
      {required this.spreadsheetId,
      required this.sheets,
      required this.spreadsheetUrl});

  factory _$_SpreadSheetData.fromJson(Map<String, dynamic> json) =>
      _$_$_SpreadSheetDataFromJson(json);

  @override
  final String spreadsheetId;
  @override // final SpreadSheetDataProps properties;
  final List<Sheet> sheets;
  @override
  final String spreadsheetUrl;

  @override
  String toString() {
    return 'SpreadSheetData(spreadsheetId: $spreadsheetId, sheets: $sheets, spreadsheetUrl: $spreadsheetUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SpreadSheetData &&
            (identical(other.spreadsheetId, spreadsheetId) ||
                const DeepCollectionEquality()
                    .equals(other.spreadsheetId, spreadsheetId)) &&
            (identical(other.sheets, sheets) ||
                const DeepCollectionEquality().equals(other.sheets, sheets)) &&
            (identical(other.spreadsheetUrl, spreadsheetUrl) ||
                const DeepCollectionEquality()
                    .equals(other.spreadsheetUrl, spreadsheetUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(spreadsheetId) ^
      const DeepCollectionEquality().hash(sheets) ^
      const DeepCollectionEquality().hash(spreadsheetUrl);

  @JsonKey(ignore: true)
  @override
  _$SpreadSheetDataCopyWith<_SpreadSheetData> get copyWith =>
      __$SpreadSheetDataCopyWithImpl<_SpreadSheetData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SpreadSheetDataToJson(this);
  }
}

abstract class _SpreadSheetData implements SpreadSheetData {
  const factory _SpreadSheetData(
      {required String spreadsheetId,
      required List<Sheet> sheets,
      required String spreadsheetUrl}) = _$_SpreadSheetData;

  factory _SpreadSheetData.fromJson(Map<String, dynamic> json) =
      _$_SpreadSheetData.fromJson;

  @override
  String get spreadsheetId => throw _privateConstructorUsedError;
  @override // final SpreadSheetDataProps properties;
  List<Sheet> get sheets => throw _privateConstructorUsedError;
  @override
  String get spreadsheetUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SpreadSheetDataCopyWith<_SpreadSheetData> get copyWith =>
      throw _privateConstructorUsedError;
}

Sheet _$SheetFromJson(Map<String, dynamic> json) {
  return _Sheet.fromJson(json);
}

/// @nodoc
class _$SheetTearOff {
  const _$SheetTearOff();

  _Sheet call(
      {required SheetProperties properties,
      List<Datum> data = const <Datum>[]}) {
    return _Sheet(
      properties: properties,
      data: data,
    );
  }

  Sheet fromJson(Map<String, Object> json) {
    return Sheet.fromJson(json);
  }
}

/// @nodoc
const $Sheet = _$SheetTearOff();

/// @nodoc
mixin _$Sheet {
  SheetProperties get properties => throw _privateConstructorUsedError;
  List<Datum> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SheetCopyWith<Sheet> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SheetCopyWith<$Res> {
  factory $SheetCopyWith(Sheet value, $Res Function(Sheet) then) =
      _$SheetCopyWithImpl<$Res>;
  $Res call({SheetProperties properties, List<Datum> data});

  $SheetPropertiesCopyWith<$Res> get properties;
}

/// @nodoc
class _$SheetCopyWithImpl<$Res> implements $SheetCopyWith<$Res> {
  _$SheetCopyWithImpl(this._value, this._then);

  final Sheet _value;
  // ignore: unused_field
  final $Res Function(Sheet) _then;

  @override
  $Res call({
    Object? properties = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      properties: properties == freezed
          ? _value.properties
          : properties // ignore: cast_nullable_to_non_nullable
              as SheetProperties,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Datum>,
    ));
  }

  @override
  $SheetPropertiesCopyWith<$Res> get properties {
    return $SheetPropertiesCopyWith<$Res>(_value.properties, (value) {
      return _then(_value.copyWith(properties: value));
    });
  }
}

/// @nodoc
abstract class _$SheetCopyWith<$Res> implements $SheetCopyWith<$Res> {
  factory _$SheetCopyWith(_Sheet value, $Res Function(_Sheet) then) =
      __$SheetCopyWithImpl<$Res>;
  @override
  $Res call({SheetProperties properties, List<Datum> data});

  @override
  $SheetPropertiesCopyWith<$Res> get properties;
}

/// @nodoc
class __$SheetCopyWithImpl<$Res> extends _$SheetCopyWithImpl<$Res>
    implements _$SheetCopyWith<$Res> {
  __$SheetCopyWithImpl(_Sheet _value, $Res Function(_Sheet) _then)
      : super(_value, (v) => _then(v as _Sheet));

  @override
  _Sheet get _value => super._value as _Sheet;

  @override
  $Res call({
    Object? properties = freezed,
    Object? data = freezed,
  }) {
    return _then(_Sheet(
      properties: properties == freezed
          ? _value.properties
          : properties // ignore: cast_nullable_to_non_nullable
              as SheetProperties,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Datum>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Sheet extends _Sheet {
  const _$_Sheet({required this.properties, this.data = const <Datum>[]})
      : super._();

  factory _$_Sheet.fromJson(Map<String, dynamic> json) =>
      _$_$_SheetFromJson(json);

  @override
  final SheetProperties properties;
  @JsonKey(defaultValue: const <Datum>[])
  @override
  final List<Datum> data;

  @override
  String toString() {
    return 'Sheet(properties: $properties, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Sheet &&
            (identical(other.properties, properties) ||
                const DeepCollectionEquality()
                    .equals(other.properties, properties)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(properties) ^
      const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$SheetCopyWith<_Sheet> get copyWith =>
      __$SheetCopyWithImpl<_Sheet>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SheetToJson(this);
  }
}

abstract class _Sheet extends Sheet {
  const factory _Sheet(
      {required SheetProperties properties, List<Datum> data}) = _$_Sheet;
  const _Sheet._() : super._();

  factory _Sheet.fromJson(Map<String, dynamic> json) = _$_Sheet.fromJson;

  @override
  SheetProperties get properties => throw _privateConstructorUsedError;
  @override
  List<Datum> get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SheetCopyWith<_Sheet> get copyWith => throw _privateConstructorUsedError;
}

Datum _$DatumFromJson(Map<String, dynamic> json) {
  return _Datum.fromJson(json);
}

/// @nodoc
class _$DatumTearOff {
  const _$DatumTearOff();

  _Datum call(
      {List<RowDatum> rowData = const <RowDatum>[],
      List<PixelSizeWrapper> rowMetadata = const <PixelSizeWrapper>[],
      List<PixelSizeWrapper> columnMetadata = const <PixelSizeWrapper>[]}) {
    return _Datum(
      rowData: rowData,
      rowMetadata: rowMetadata,
      columnMetadata: columnMetadata,
    );
  }

  Datum fromJson(Map<String, Object> json) {
    return Datum.fromJson(json);
  }
}

/// @nodoc
const $Datum = _$DatumTearOff();

/// @nodoc
mixin _$Datum {
  List<RowDatum> get rowData => throw _privateConstructorUsedError;
  List<PixelSizeWrapper> get rowMetadata => throw _privateConstructorUsedError;
  List<PixelSizeWrapper> get columnMetadata =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DatumCopyWith<Datum> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatumCopyWith<$Res> {
  factory $DatumCopyWith(Datum value, $Res Function(Datum) then) =
      _$DatumCopyWithImpl<$Res>;
  $Res call(
      {List<RowDatum> rowData,
      List<PixelSizeWrapper> rowMetadata,
      List<PixelSizeWrapper> columnMetadata});
}

/// @nodoc
class _$DatumCopyWithImpl<$Res> implements $DatumCopyWith<$Res> {
  _$DatumCopyWithImpl(this._value, this._then);

  final Datum _value;
  // ignore: unused_field
  final $Res Function(Datum) _then;

  @override
  $Res call({
    Object? rowData = freezed,
    Object? rowMetadata = freezed,
    Object? columnMetadata = freezed,
  }) {
    return _then(_value.copyWith(
      rowData: rowData == freezed
          ? _value.rowData
          : rowData // ignore: cast_nullable_to_non_nullable
              as List<RowDatum>,
      rowMetadata: rowMetadata == freezed
          ? _value.rowMetadata
          : rowMetadata // ignore: cast_nullable_to_non_nullable
              as List<PixelSizeWrapper>,
      columnMetadata: columnMetadata == freezed
          ? _value.columnMetadata
          : columnMetadata // ignore: cast_nullable_to_non_nullable
              as List<PixelSizeWrapper>,
    ));
  }
}

/// @nodoc
abstract class _$DatumCopyWith<$Res> implements $DatumCopyWith<$Res> {
  factory _$DatumCopyWith(_Datum value, $Res Function(_Datum) then) =
      __$DatumCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<RowDatum> rowData,
      List<PixelSizeWrapper> rowMetadata,
      List<PixelSizeWrapper> columnMetadata});
}

/// @nodoc
class __$DatumCopyWithImpl<$Res> extends _$DatumCopyWithImpl<$Res>
    implements _$DatumCopyWith<$Res> {
  __$DatumCopyWithImpl(_Datum _value, $Res Function(_Datum) _then)
      : super(_value, (v) => _then(v as _Datum));

  @override
  _Datum get _value => super._value as _Datum;

  @override
  $Res call({
    Object? rowData = freezed,
    Object? rowMetadata = freezed,
    Object? columnMetadata = freezed,
  }) {
    return _then(_Datum(
      rowData: rowData == freezed
          ? _value.rowData
          : rowData // ignore: cast_nullable_to_non_nullable
              as List<RowDatum>,
      rowMetadata: rowMetadata == freezed
          ? _value.rowMetadata
          : rowMetadata // ignore: cast_nullable_to_non_nullable
              as List<PixelSizeWrapper>,
      columnMetadata: columnMetadata == freezed
          ? _value.columnMetadata
          : columnMetadata // ignore: cast_nullable_to_non_nullable
              as List<PixelSizeWrapper>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Datum extends _Datum {
  const _$_Datum(
      {this.rowData = const <RowDatum>[],
      this.rowMetadata = const <PixelSizeWrapper>[],
      this.columnMetadata = const <PixelSizeWrapper>[]})
      : super._();

  factory _$_Datum.fromJson(Map<String, dynamic> json) =>
      _$_$_DatumFromJson(json);

  @JsonKey(defaultValue: const <RowDatum>[])
  @override
  final List<RowDatum> rowData;
  @JsonKey(defaultValue: const <PixelSizeWrapper>[])
  @override
  final List<PixelSizeWrapper> rowMetadata;
  @JsonKey(defaultValue: const <PixelSizeWrapper>[])
  @override
  final List<PixelSizeWrapper> columnMetadata;

  @override
  String toString() {
    return 'Datum(rowData: $rowData, rowMetadata: $rowMetadata, columnMetadata: $columnMetadata)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Datum &&
            (identical(other.rowData, rowData) ||
                const DeepCollectionEquality()
                    .equals(other.rowData, rowData)) &&
            (identical(other.rowMetadata, rowMetadata) ||
                const DeepCollectionEquality()
                    .equals(other.rowMetadata, rowMetadata)) &&
            (identical(other.columnMetadata, columnMetadata) ||
                const DeepCollectionEquality()
                    .equals(other.columnMetadata, columnMetadata)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(rowData) ^
      const DeepCollectionEquality().hash(rowMetadata) ^
      const DeepCollectionEquality().hash(columnMetadata);

  @JsonKey(ignore: true)
  @override
  _$DatumCopyWith<_Datum> get copyWith =>
      __$DatumCopyWithImpl<_Datum>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DatumToJson(this);
  }
}

abstract class _Datum extends Datum {
  const factory _Datum(
      {List<RowDatum> rowData,
      List<PixelSizeWrapper> rowMetadata,
      List<PixelSizeWrapper> columnMetadata}) = _$_Datum;
  const _Datum._() : super._();

  factory _Datum.fromJson(Map<String, dynamic> json) = _$_Datum.fromJson;

  @override
  List<RowDatum> get rowData => throw _privateConstructorUsedError;
  @override
  List<PixelSizeWrapper> get rowMetadata => throw _privateConstructorUsedError;
  @override
  List<PixelSizeWrapper> get columnMetadata =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DatumCopyWith<_Datum> get copyWith => throw _privateConstructorUsedError;
}

RowDatum _$RowDatumFromJson(Map<String, dynamic> json) {
  return _RowDatum.fromJson(json);
}

/// @nodoc
class _$RowDatumTearOff {
  const _$RowDatumTearOff();

  _RowDatum call({List<Value?> values = const <Value?>[]}) {
    return _RowDatum(
      values: values,
    );
  }

  RowDatum fromJson(Map<String, Object> json) {
    return RowDatum.fromJson(json);
  }
}

/// @nodoc
const $RowDatum = _$RowDatumTearOff();

/// @nodoc
mixin _$RowDatum {
  List<Value?> get values => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RowDatumCopyWith<RowDatum> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RowDatumCopyWith<$Res> {
  factory $RowDatumCopyWith(RowDatum value, $Res Function(RowDatum) then) =
      _$RowDatumCopyWithImpl<$Res>;
  $Res call({List<Value?> values});
}

/// @nodoc
class _$RowDatumCopyWithImpl<$Res> implements $RowDatumCopyWith<$Res> {
  _$RowDatumCopyWithImpl(this._value, this._then);

  final RowDatum _value;
  // ignore: unused_field
  final $Res Function(RowDatum) _then;

  @override
  $Res call({
    Object? values = freezed,
  }) {
    return _then(_value.copyWith(
      values: values == freezed
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<Value?>,
    ));
  }
}

/// @nodoc
abstract class _$RowDatumCopyWith<$Res> implements $RowDatumCopyWith<$Res> {
  factory _$RowDatumCopyWith(_RowDatum value, $Res Function(_RowDatum) then) =
      __$RowDatumCopyWithImpl<$Res>;
  @override
  $Res call({List<Value?> values});
}

/// @nodoc
class __$RowDatumCopyWithImpl<$Res> extends _$RowDatumCopyWithImpl<$Res>
    implements _$RowDatumCopyWith<$Res> {
  __$RowDatumCopyWithImpl(_RowDatum _value, $Res Function(_RowDatum) _then)
      : super(_value, (v) => _then(v as _RowDatum));

  @override
  _RowDatum get _value => super._value as _RowDatum;

  @override
  $Res call({
    Object? values = freezed,
  }) {
    return _then(_RowDatum(
      values: values == freezed
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<Value?>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RowDatum implements _RowDatum {
  const _$_RowDatum({this.values = const <Value?>[]});

  factory _$_RowDatum.fromJson(Map<String, dynamic> json) =>
      _$_$_RowDatumFromJson(json);

  @JsonKey(defaultValue: const <Value?>[])
  @override
  final List<Value?> values;

  @override
  String toString() {
    return 'RowDatum(values: $values)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RowDatum &&
            (identical(other.values, values) ||
                const DeepCollectionEquality().equals(other.values, values)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(values);

  @JsonKey(ignore: true)
  @override
  _$RowDatumCopyWith<_RowDatum> get copyWith =>
      __$RowDatumCopyWithImpl<_RowDatum>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RowDatumToJson(this);
  }
}

abstract class _RowDatum implements RowDatum {
  const factory _RowDatum({List<Value?> values}) = _$_RowDatum;

  factory _RowDatum.fromJson(Map<String, dynamic> json) = _$_RowDatum.fromJson;

  @override
  List<Value?> get values => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RowDatumCopyWith<_RowDatum> get copyWith =>
      throw _privateConstructorUsedError;
}

EffectiveFormat _$EffectiveFormatFromJson(Map<String, dynamic> json) {
  return _EffectiveFormat.fromJson(json);
}

/// @nodoc
class _$EffectiveFormatTearOff {
  const _$EffectiveFormatTearOff();

  _EffectiveFormat call(
      {required RgbColor backgroundColor,
      required PaddingMetrics padding,
      String? verticalAlignment,
      String? wrapStrategy,
      required EffectiveFormatTextFormat textFormat,
      required BackgroundColorStyle backgroundColorStyle,
      required Borders borders,
      String? horizontalAlignment,
      String? hyperlinkDisplayType}) {
    return _EffectiveFormat(
      backgroundColor: backgroundColor,
      padding: padding,
      verticalAlignment: verticalAlignment,
      wrapStrategy: wrapStrategy,
      textFormat: textFormat,
      backgroundColorStyle: backgroundColorStyle,
      borders: borders,
      horizontalAlignment: horizontalAlignment,
      hyperlinkDisplayType: hyperlinkDisplayType,
    );
  }

  EffectiveFormat fromJson(Map<String, Object> json) {
    return EffectiveFormat.fromJson(json);
  }
}

/// @nodoc
const $EffectiveFormat = _$EffectiveFormatTearOff();

/// @nodoc
mixin _$EffectiveFormat {
  RgbColor get backgroundColor => throw _privateConstructorUsedError;
  PaddingMetrics get padding => throw _privateConstructorUsedError;
  String? get verticalAlignment => throw _privateConstructorUsedError;
  String? get wrapStrategy => throw _privateConstructorUsedError;
  EffectiveFormatTextFormat get textFormat =>
      throw _privateConstructorUsedError;
  BackgroundColorStyle get backgroundColorStyle =>
      throw _privateConstructorUsedError;
  Borders get borders => throw _privateConstructorUsedError;
  String? get horizontalAlignment => throw _privateConstructorUsedError;
  String? get hyperlinkDisplayType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EffectiveFormatCopyWith<EffectiveFormat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EffectiveFormatCopyWith<$Res> {
  factory $EffectiveFormatCopyWith(
          EffectiveFormat value, $Res Function(EffectiveFormat) then) =
      _$EffectiveFormatCopyWithImpl<$Res>;
  $Res call(
      {RgbColor backgroundColor,
      PaddingMetrics padding,
      String? verticalAlignment,
      String? wrapStrategy,
      EffectiveFormatTextFormat textFormat,
      BackgroundColorStyle backgroundColorStyle,
      Borders borders,
      String? horizontalAlignment,
      String? hyperlinkDisplayType});

  $RgbColorCopyWith<$Res> get backgroundColor;
  $PaddingMetricsCopyWith<$Res> get padding;
  $EffectiveFormatTextFormatCopyWith<$Res> get textFormat;
  $BackgroundColorStyleCopyWith<$Res> get backgroundColorStyle;
  $BordersCopyWith<$Res> get borders;
}

/// @nodoc
class _$EffectiveFormatCopyWithImpl<$Res>
    implements $EffectiveFormatCopyWith<$Res> {
  _$EffectiveFormatCopyWithImpl(this._value, this._then);

  final EffectiveFormat _value;
  // ignore: unused_field
  final $Res Function(EffectiveFormat) _then;

  @override
  $Res call({
    Object? backgroundColor = freezed,
    Object? padding = freezed,
    Object? verticalAlignment = freezed,
    Object? wrapStrategy = freezed,
    Object? textFormat = freezed,
    Object? backgroundColorStyle = freezed,
    Object? borders = freezed,
    Object? horizontalAlignment = freezed,
    Object? hyperlinkDisplayType = freezed,
  }) {
    return _then(_value.copyWith(
      backgroundColor: backgroundColor == freezed
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as RgbColor,
      padding: padding == freezed
          ? _value.padding
          : padding // ignore: cast_nullable_to_non_nullable
              as PaddingMetrics,
      verticalAlignment: verticalAlignment == freezed
          ? _value.verticalAlignment
          : verticalAlignment // ignore: cast_nullable_to_non_nullable
              as String?,
      wrapStrategy: wrapStrategy == freezed
          ? _value.wrapStrategy
          : wrapStrategy // ignore: cast_nullable_to_non_nullable
              as String?,
      textFormat: textFormat == freezed
          ? _value.textFormat
          : textFormat // ignore: cast_nullable_to_non_nullable
              as EffectiveFormatTextFormat,
      backgroundColorStyle: backgroundColorStyle == freezed
          ? _value.backgroundColorStyle
          : backgroundColorStyle // ignore: cast_nullable_to_non_nullable
              as BackgroundColorStyle,
      borders: borders == freezed
          ? _value.borders
          : borders // ignore: cast_nullable_to_non_nullable
              as Borders,
      horizontalAlignment: horizontalAlignment == freezed
          ? _value.horizontalAlignment
          : horizontalAlignment // ignore: cast_nullable_to_non_nullable
              as String?,
      hyperlinkDisplayType: hyperlinkDisplayType == freezed
          ? _value.hyperlinkDisplayType
          : hyperlinkDisplayType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $RgbColorCopyWith<$Res> get backgroundColor {
    return $RgbColorCopyWith<$Res>(_value.backgroundColor, (value) {
      return _then(_value.copyWith(backgroundColor: value));
    });
  }

  @override
  $PaddingMetricsCopyWith<$Res> get padding {
    return $PaddingMetricsCopyWith<$Res>(_value.padding, (value) {
      return _then(_value.copyWith(padding: value));
    });
  }

  @override
  $EffectiveFormatTextFormatCopyWith<$Res> get textFormat {
    return $EffectiveFormatTextFormatCopyWith<$Res>(_value.textFormat, (value) {
      return _then(_value.copyWith(textFormat: value));
    });
  }

  @override
  $BackgroundColorStyleCopyWith<$Res> get backgroundColorStyle {
    return $BackgroundColorStyleCopyWith<$Res>(_value.backgroundColorStyle,
        (value) {
      return _then(_value.copyWith(backgroundColorStyle: value));
    });
  }

  @override
  $BordersCopyWith<$Res> get borders {
    return $BordersCopyWith<$Res>(_value.borders, (value) {
      return _then(_value.copyWith(borders: value));
    });
  }
}

/// @nodoc
abstract class _$EffectiveFormatCopyWith<$Res>
    implements $EffectiveFormatCopyWith<$Res> {
  factory _$EffectiveFormatCopyWith(
          _EffectiveFormat value, $Res Function(_EffectiveFormat) then) =
      __$EffectiveFormatCopyWithImpl<$Res>;
  @override
  $Res call(
      {RgbColor backgroundColor,
      PaddingMetrics padding,
      String? verticalAlignment,
      String? wrapStrategy,
      EffectiveFormatTextFormat textFormat,
      BackgroundColorStyle backgroundColorStyle,
      Borders borders,
      String? horizontalAlignment,
      String? hyperlinkDisplayType});

  @override
  $RgbColorCopyWith<$Res> get backgroundColor;
  @override
  $PaddingMetricsCopyWith<$Res> get padding;
  @override
  $EffectiveFormatTextFormatCopyWith<$Res> get textFormat;
  @override
  $BackgroundColorStyleCopyWith<$Res> get backgroundColorStyle;
  @override
  $BordersCopyWith<$Res> get borders;
}

/// @nodoc
class __$EffectiveFormatCopyWithImpl<$Res>
    extends _$EffectiveFormatCopyWithImpl<$Res>
    implements _$EffectiveFormatCopyWith<$Res> {
  __$EffectiveFormatCopyWithImpl(
      _EffectiveFormat _value, $Res Function(_EffectiveFormat) _then)
      : super(_value, (v) => _then(v as _EffectiveFormat));

  @override
  _EffectiveFormat get _value => super._value as _EffectiveFormat;

  @override
  $Res call({
    Object? backgroundColor = freezed,
    Object? padding = freezed,
    Object? verticalAlignment = freezed,
    Object? wrapStrategy = freezed,
    Object? textFormat = freezed,
    Object? backgroundColorStyle = freezed,
    Object? borders = freezed,
    Object? horizontalAlignment = freezed,
    Object? hyperlinkDisplayType = freezed,
  }) {
    return _then(_EffectiveFormat(
      backgroundColor: backgroundColor == freezed
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as RgbColor,
      padding: padding == freezed
          ? _value.padding
          : padding // ignore: cast_nullable_to_non_nullable
              as PaddingMetrics,
      verticalAlignment: verticalAlignment == freezed
          ? _value.verticalAlignment
          : verticalAlignment // ignore: cast_nullable_to_non_nullable
              as String?,
      wrapStrategy: wrapStrategy == freezed
          ? _value.wrapStrategy
          : wrapStrategy // ignore: cast_nullable_to_non_nullable
              as String?,
      textFormat: textFormat == freezed
          ? _value.textFormat
          : textFormat // ignore: cast_nullable_to_non_nullable
              as EffectiveFormatTextFormat,
      backgroundColorStyle: backgroundColorStyle == freezed
          ? _value.backgroundColorStyle
          : backgroundColorStyle // ignore: cast_nullable_to_non_nullable
              as BackgroundColorStyle,
      borders: borders == freezed
          ? _value.borders
          : borders // ignore: cast_nullable_to_non_nullable
              as Borders,
      horizontalAlignment: horizontalAlignment == freezed
          ? _value.horizontalAlignment
          : horizontalAlignment // ignore: cast_nullable_to_non_nullable
              as String?,
      hyperlinkDisplayType: hyperlinkDisplayType == freezed
          ? _value.hyperlinkDisplayType
          : hyperlinkDisplayType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EffectiveFormat implements _EffectiveFormat {
  const _$_EffectiveFormat(
      {required this.backgroundColor,
      required this.padding,
      this.verticalAlignment,
      this.wrapStrategy,
      required this.textFormat,
      required this.backgroundColorStyle,
      required this.borders,
      this.horizontalAlignment,
      this.hyperlinkDisplayType});

  factory _$_EffectiveFormat.fromJson(Map<String, dynamic> json) =>
      _$_$_EffectiveFormatFromJson(json);

  @override
  final RgbColor backgroundColor;
  @override
  final PaddingMetrics padding;
  @override
  final String? verticalAlignment;
  @override
  final String? wrapStrategy;
  @override
  final EffectiveFormatTextFormat textFormat;
  @override
  final BackgroundColorStyle backgroundColorStyle;
  @override
  final Borders borders;
  @override
  final String? horizontalAlignment;
  @override
  final String? hyperlinkDisplayType;

  @override
  String toString() {
    return 'EffectiveFormat(backgroundColor: $backgroundColor, padding: $padding, verticalAlignment: $verticalAlignment, wrapStrategy: $wrapStrategy, textFormat: $textFormat, backgroundColorStyle: $backgroundColorStyle, borders: $borders, horizontalAlignment: $horizontalAlignment, hyperlinkDisplayType: $hyperlinkDisplayType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EffectiveFormat &&
            (identical(other.backgroundColor, backgroundColor) ||
                const DeepCollectionEquality()
                    .equals(other.backgroundColor, backgroundColor)) &&
            (identical(other.padding, padding) ||
                const DeepCollectionEquality()
                    .equals(other.padding, padding)) &&
            (identical(other.verticalAlignment, verticalAlignment) ||
                const DeepCollectionEquality()
                    .equals(other.verticalAlignment, verticalAlignment)) &&
            (identical(other.wrapStrategy, wrapStrategy) ||
                const DeepCollectionEquality()
                    .equals(other.wrapStrategy, wrapStrategy)) &&
            (identical(other.textFormat, textFormat) ||
                const DeepCollectionEquality()
                    .equals(other.textFormat, textFormat)) &&
            (identical(other.backgroundColorStyle, backgroundColorStyle) ||
                const DeepCollectionEquality().equals(
                    other.backgroundColorStyle, backgroundColorStyle)) &&
            (identical(other.borders, borders) ||
                const DeepCollectionEquality()
                    .equals(other.borders, borders)) &&
            (identical(other.horizontalAlignment, horizontalAlignment) ||
                const DeepCollectionEquality()
                    .equals(other.horizontalAlignment, horizontalAlignment)) &&
            (identical(other.hyperlinkDisplayType, hyperlinkDisplayType) ||
                const DeepCollectionEquality()
                    .equals(other.hyperlinkDisplayType, hyperlinkDisplayType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(backgroundColor) ^
      const DeepCollectionEquality().hash(padding) ^
      const DeepCollectionEquality().hash(verticalAlignment) ^
      const DeepCollectionEquality().hash(wrapStrategy) ^
      const DeepCollectionEquality().hash(textFormat) ^
      const DeepCollectionEquality().hash(backgroundColorStyle) ^
      const DeepCollectionEquality().hash(borders) ^
      const DeepCollectionEquality().hash(horizontalAlignment) ^
      const DeepCollectionEquality().hash(hyperlinkDisplayType);

  @JsonKey(ignore: true)
  @override
  _$EffectiveFormatCopyWith<_EffectiveFormat> get copyWith =>
      __$EffectiveFormatCopyWithImpl<_EffectiveFormat>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_EffectiveFormatToJson(this);
  }
}

abstract class _EffectiveFormat implements EffectiveFormat {
  const factory _EffectiveFormat(
      {required RgbColor backgroundColor,
      required PaddingMetrics padding,
      String? verticalAlignment,
      String? wrapStrategy,
      required EffectiveFormatTextFormat textFormat,
      required BackgroundColorStyle backgroundColorStyle,
      required Borders borders,
      String? horizontalAlignment,
      String? hyperlinkDisplayType}) = _$_EffectiveFormat;

  factory _EffectiveFormat.fromJson(Map<String, dynamic> json) =
      _$_EffectiveFormat.fromJson;

  @override
  RgbColor get backgroundColor => throw _privateConstructorUsedError;
  @override
  PaddingMetrics get padding => throw _privateConstructorUsedError;
  @override
  String? get verticalAlignment => throw _privateConstructorUsedError;
  @override
  String? get wrapStrategy => throw _privateConstructorUsedError;
  @override
  EffectiveFormatTextFormat get textFormat =>
      throw _privateConstructorUsedError;
  @override
  BackgroundColorStyle get backgroundColorStyle =>
      throw _privateConstructorUsedError;
  @override
  Borders get borders => throw _privateConstructorUsedError;
  @override
  String? get horizontalAlignment => throw _privateConstructorUsedError;
  @override
  String? get hyperlinkDisplayType => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EffectiveFormatCopyWith<_EffectiveFormat> get copyWith =>
      throw _privateConstructorUsedError;
}

Borders _$BordersFromJson(Map<String, dynamic> json) {
  return _Borders.fromJson(json);
}

/// @nodoc
class _$BordersTearOff {
  const _$BordersTearOff();

  _Borders call(
      {required SingleBorder bottom,
      required SingleBorder left,
      required SingleBorder right,
      required SingleBorder top}) {
    return _Borders(
      bottom: bottom,
      left: left,
      right: right,
      top: top,
    );
  }

  Borders fromJson(Map<String, Object> json) {
    return Borders.fromJson(json);
  }
}

/// @nodoc
const $Borders = _$BordersTearOff();

/// @nodoc
mixin _$Borders {
  SingleBorder get bottom => throw _privateConstructorUsedError;
  SingleBorder get left => throw _privateConstructorUsedError;
  SingleBorder get right => throw _privateConstructorUsedError;
  SingleBorder get top => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BordersCopyWith<Borders> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BordersCopyWith<$Res> {
  factory $BordersCopyWith(Borders value, $Res Function(Borders) then) =
      _$BordersCopyWithImpl<$Res>;
  $Res call(
      {SingleBorder bottom,
      SingleBorder left,
      SingleBorder right,
      SingleBorder top});

  $SingleBorderCopyWith<$Res> get bottom;
  $SingleBorderCopyWith<$Res> get left;
  $SingleBorderCopyWith<$Res> get right;
  $SingleBorderCopyWith<$Res> get top;
}

/// @nodoc
class _$BordersCopyWithImpl<$Res> implements $BordersCopyWith<$Res> {
  _$BordersCopyWithImpl(this._value, this._then);

  final Borders _value;
  // ignore: unused_field
  final $Res Function(Borders) _then;

  @override
  $Res call({
    Object? bottom = freezed,
    Object? left = freezed,
    Object? right = freezed,
    Object? top = freezed,
  }) {
    return _then(_value.copyWith(
      bottom: bottom == freezed
          ? _value.bottom
          : bottom // ignore: cast_nullable_to_non_nullable
              as SingleBorder,
      left: left == freezed
          ? _value.left
          : left // ignore: cast_nullable_to_non_nullable
              as SingleBorder,
      right: right == freezed
          ? _value.right
          : right // ignore: cast_nullable_to_non_nullable
              as SingleBorder,
      top: top == freezed
          ? _value.top
          : top // ignore: cast_nullable_to_non_nullable
              as SingleBorder,
    ));
  }

  @override
  $SingleBorderCopyWith<$Res> get bottom {
    return $SingleBorderCopyWith<$Res>(_value.bottom, (value) {
      return _then(_value.copyWith(bottom: value));
    });
  }

  @override
  $SingleBorderCopyWith<$Res> get left {
    return $SingleBorderCopyWith<$Res>(_value.left, (value) {
      return _then(_value.copyWith(left: value));
    });
  }

  @override
  $SingleBorderCopyWith<$Res> get right {
    return $SingleBorderCopyWith<$Res>(_value.right, (value) {
      return _then(_value.copyWith(right: value));
    });
  }

  @override
  $SingleBorderCopyWith<$Res> get top {
    return $SingleBorderCopyWith<$Res>(_value.top, (value) {
      return _then(_value.copyWith(top: value));
    });
  }
}

/// @nodoc
abstract class _$BordersCopyWith<$Res> implements $BordersCopyWith<$Res> {
  factory _$BordersCopyWith(_Borders value, $Res Function(_Borders) then) =
      __$BordersCopyWithImpl<$Res>;
  @override
  $Res call(
      {SingleBorder bottom,
      SingleBorder left,
      SingleBorder right,
      SingleBorder top});

  @override
  $SingleBorderCopyWith<$Res> get bottom;
  @override
  $SingleBorderCopyWith<$Res> get left;
  @override
  $SingleBorderCopyWith<$Res> get right;
  @override
  $SingleBorderCopyWith<$Res> get top;
}

/// @nodoc
class __$BordersCopyWithImpl<$Res> extends _$BordersCopyWithImpl<$Res>
    implements _$BordersCopyWith<$Res> {
  __$BordersCopyWithImpl(_Borders _value, $Res Function(_Borders) _then)
      : super(_value, (v) => _then(v as _Borders));

  @override
  _Borders get _value => super._value as _Borders;

  @override
  $Res call({
    Object? bottom = freezed,
    Object? left = freezed,
    Object? right = freezed,
    Object? top = freezed,
  }) {
    return _then(_Borders(
      bottom: bottom == freezed
          ? _value.bottom
          : bottom // ignore: cast_nullable_to_non_nullable
              as SingleBorder,
      left: left == freezed
          ? _value.left
          : left // ignore: cast_nullable_to_non_nullable
              as SingleBorder,
      right: right == freezed
          ? _value.right
          : right // ignore: cast_nullable_to_non_nullable
              as SingleBorder,
      top: top == freezed
          ? _value.top
          : top // ignore: cast_nullable_to_non_nullable
              as SingleBorder,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Borders implements _Borders {
  const _$_Borders(
      {required this.bottom,
      required this.left,
      required this.right,
      required this.top});

  factory _$_Borders.fromJson(Map<String, dynamic> json) =>
      _$_$_BordersFromJson(json);

  @override
  final SingleBorder bottom;
  @override
  final SingleBorder left;
  @override
  final SingleBorder right;
  @override
  final SingleBorder top;

  @override
  String toString() {
    return 'Borders(bottom: $bottom, left: $left, right: $right, top: $top)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Borders &&
            (identical(other.bottom, bottom) ||
                const DeepCollectionEquality().equals(other.bottom, bottom)) &&
            (identical(other.left, left) ||
                const DeepCollectionEquality().equals(other.left, left)) &&
            (identical(other.right, right) ||
                const DeepCollectionEquality().equals(other.right, right)) &&
            (identical(other.top, top) ||
                const DeepCollectionEquality().equals(other.top, top)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(bottom) ^
      const DeepCollectionEquality().hash(left) ^
      const DeepCollectionEquality().hash(right) ^
      const DeepCollectionEquality().hash(top);

  @JsonKey(ignore: true)
  @override
  _$BordersCopyWith<_Borders> get copyWith =>
      __$BordersCopyWithImpl<_Borders>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BordersToJson(this);
  }
}

abstract class _Borders implements Borders {
  const factory _Borders(
      {required SingleBorder bottom,
      required SingleBorder left,
      required SingleBorder right,
      required SingleBorder top}) = _$_Borders;

  factory _Borders.fromJson(Map<String, dynamic> json) = _$_Borders.fromJson;

  @override
  SingleBorder get bottom => throw _privateConstructorUsedError;
  @override
  SingleBorder get left => throw _privateConstructorUsedError;
  @override
  SingleBorder get right => throw _privateConstructorUsedError;
  @override
  SingleBorder get top => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BordersCopyWith<_Borders> get copyWith =>
      throw _privateConstructorUsedError;
}

RgbColor _$RgbColorFromJson(Map<String, dynamic> json) {
  return _RgbColor.fromJson(json);
}

/// @nodoc
class _$RgbColorTearOff {
  const _$RgbColorTearOff();

  _RgbColor call(
      {required double red,
      required double green,
      required double blue,
      required double alpha}) {
    return _RgbColor(
      red: red,
      green: green,
      blue: blue,
      alpha: alpha,
    );
  }

  RgbColor fromJson(Map<String, Object> json) {
    return RgbColor.fromJson(json);
  }
}

/// @nodoc
const $RgbColor = _$RgbColorTearOff();

/// @nodoc
mixin _$RgbColor {
  double get red => throw _privateConstructorUsedError;
  double get green => throw _privateConstructorUsedError;
  double get blue => throw _privateConstructorUsedError;
  double get alpha => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RgbColorCopyWith<RgbColor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RgbColorCopyWith<$Res> {
  factory $RgbColorCopyWith(RgbColor value, $Res Function(RgbColor) then) =
      _$RgbColorCopyWithImpl<$Res>;
  $Res call({double red, double green, double blue, double alpha});
}

/// @nodoc
class _$RgbColorCopyWithImpl<$Res> implements $RgbColorCopyWith<$Res> {
  _$RgbColorCopyWithImpl(this._value, this._then);

  final RgbColor _value;
  // ignore: unused_field
  final $Res Function(RgbColor) _then;

  @override
  $Res call({
    Object? red = freezed,
    Object? green = freezed,
    Object? blue = freezed,
    Object? alpha = freezed,
  }) {
    return _then(_value.copyWith(
      red: red == freezed
          ? _value.red
          : red // ignore: cast_nullable_to_non_nullable
              as double,
      green: green == freezed
          ? _value.green
          : green // ignore: cast_nullable_to_non_nullable
              as double,
      blue: blue == freezed
          ? _value.blue
          : blue // ignore: cast_nullable_to_non_nullable
              as double,
      alpha: alpha == freezed
          ? _value.alpha
          : alpha // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$RgbColorCopyWith<$Res> implements $RgbColorCopyWith<$Res> {
  factory _$RgbColorCopyWith(_RgbColor value, $Res Function(_RgbColor) then) =
      __$RgbColorCopyWithImpl<$Res>;
  @override
  $Res call({double red, double green, double blue, double alpha});
}

/// @nodoc
class __$RgbColorCopyWithImpl<$Res> extends _$RgbColorCopyWithImpl<$Res>
    implements _$RgbColorCopyWith<$Res> {
  __$RgbColorCopyWithImpl(_RgbColor _value, $Res Function(_RgbColor) _then)
      : super(_value, (v) => _then(v as _RgbColor));

  @override
  _RgbColor get _value => super._value as _RgbColor;

  @override
  $Res call({
    Object? red = freezed,
    Object? green = freezed,
    Object? blue = freezed,
    Object? alpha = freezed,
  }) {
    return _then(_RgbColor(
      red: red == freezed
          ? _value.red
          : red // ignore: cast_nullable_to_non_nullable
              as double,
      green: green == freezed
          ? _value.green
          : green // ignore: cast_nullable_to_non_nullable
              as double,
      blue: blue == freezed
          ? _value.blue
          : blue // ignore: cast_nullable_to_non_nullable
              as double,
      alpha: alpha == freezed
          ? _value.alpha
          : alpha // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RgbColor extends _RgbColor {
  const _$_RgbColor(
      {required this.red,
      required this.green,
      required this.blue,
      required this.alpha})
      : super._();

  factory _$_RgbColor.fromJson(Map<String, dynamic> json) =>
      _$_$_RgbColorFromJson(json);

  @override
  final double red;
  @override
  final double green;
  @override
  final double blue;
  @override
  final double alpha;

  @override
  String toString() {
    return 'RgbColor(red: $red, green: $green, blue: $blue, alpha: $alpha)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RgbColor &&
            (identical(other.red, red) ||
                const DeepCollectionEquality().equals(other.red, red)) &&
            (identical(other.green, green) ||
                const DeepCollectionEquality().equals(other.green, green)) &&
            (identical(other.blue, blue) ||
                const DeepCollectionEquality().equals(other.blue, blue)) &&
            (identical(other.alpha, alpha) ||
                const DeepCollectionEquality().equals(other.alpha, alpha)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(red) ^
      const DeepCollectionEquality().hash(green) ^
      const DeepCollectionEquality().hash(blue) ^
      const DeepCollectionEquality().hash(alpha);

  @JsonKey(ignore: true)
  @override
  _$RgbColorCopyWith<_RgbColor> get copyWith =>
      __$RgbColorCopyWithImpl<_RgbColor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RgbColorToJson(this);
  }
}

abstract class _RgbColor extends RgbColor {
  const factory _RgbColor(
      {required double red,
      required double green,
      required double blue,
      required double alpha}) = _$_RgbColor;
  const _RgbColor._() : super._();

  factory _RgbColor.fromJson(Map<String, dynamic> json) = _$_RgbColor.fromJson;

  @override
  double get red => throw _privateConstructorUsedError;
  @override
  double get green => throw _privateConstructorUsedError;
  @override
  double get blue => throw _privateConstructorUsedError;
  @override
  double get alpha => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RgbColorCopyWith<_RgbColor> get copyWith =>
      throw _privateConstructorUsedError;
}

BackgroundColorStyle _$BackgroundColorStyleFromJson(Map<String, dynamic> json) {
  return _BackgroundColorStyle.fromJson(json);
}

/// @nodoc
class _$BackgroundColorStyleTearOff {
  const _$BackgroundColorStyleTearOff();

  _BackgroundColorStyle call({required RgbColor rgbColor}) {
    return _BackgroundColorStyle(
      rgbColor: rgbColor,
    );
  }

  BackgroundColorStyle fromJson(Map<String, Object> json) {
    return BackgroundColorStyle.fromJson(json);
  }
}

/// @nodoc
const $BackgroundColorStyle = _$BackgroundColorStyleTearOff();

/// @nodoc
mixin _$BackgroundColorStyle {
  RgbColor get rgbColor => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BackgroundColorStyleCopyWith<BackgroundColorStyle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BackgroundColorStyleCopyWith<$Res> {
  factory $BackgroundColorStyleCopyWith(BackgroundColorStyle value,
          $Res Function(BackgroundColorStyle) then) =
      _$BackgroundColorStyleCopyWithImpl<$Res>;
  $Res call({RgbColor rgbColor});

  $RgbColorCopyWith<$Res> get rgbColor;
}

/// @nodoc
class _$BackgroundColorStyleCopyWithImpl<$Res>
    implements $BackgroundColorStyleCopyWith<$Res> {
  _$BackgroundColorStyleCopyWithImpl(this._value, this._then);

  final BackgroundColorStyle _value;
  // ignore: unused_field
  final $Res Function(BackgroundColorStyle) _then;

  @override
  $Res call({
    Object? rgbColor = freezed,
  }) {
    return _then(_value.copyWith(
      rgbColor: rgbColor == freezed
          ? _value.rgbColor
          : rgbColor // ignore: cast_nullable_to_non_nullable
              as RgbColor,
    ));
  }

  @override
  $RgbColorCopyWith<$Res> get rgbColor {
    return $RgbColorCopyWith<$Res>(_value.rgbColor, (value) {
      return _then(_value.copyWith(rgbColor: value));
    });
  }
}

/// @nodoc
abstract class _$BackgroundColorStyleCopyWith<$Res>
    implements $BackgroundColorStyleCopyWith<$Res> {
  factory _$BackgroundColorStyleCopyWith(_BackgroundColorStyle value,
          $Res Function(_BackgroundColorStyle) then) =
      __$BackgroundColorStyleCopyWithImpl<$Res>;
  @override
  $Res call({RgbColor rgbColor});

  @override
  $RgbColorCopyWith<$Res> get rgbColor;
}

/// @nodoc
class __$BackgroundColorStyleCopyWithImpl<$Res>
    extends _$BackgroundColorStyleCopyWithImpl<$Res>
    implements _$BackgroundColorStyleCopyWith<$Res> {
  __$BackgroundColorStyleCopyWithImpl(
      _BackgroundColorStyle _value, $Res Function(_BackgroundColorStyle) _then)
      : super(_value, (v) => _then(v as _BackgroundColorStyle));

  @override
  _BackgroundColorStyle get _value => super._value as _BackgroundColorStyle;

  @override
  $Res call({
    Object? rgbColor = freezed,
  }) {
    return _then(_BackgroundColorStyle(
      rgbColor: rgbColor == freezed
          ? _value.rgbColor
          : rgbColor // ignore: cast_nullable_to_non_nullable
              as RgbColor,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BackgroundColorStyle implements _BackgroundColorStyle {
  const _$_BackgroundColorStyle({required this.rgbColor});

  factory _$_BackgroundColorStyle.fromJson(Map<String, dynamic> json) =>
      _$_$_BackgroundColorStyleFromJson(json);

  @override
  final RgbColor rgbColor;

  @override
  String toString() {
    return 'BackgroundColorStyle(rgbColor: $rgbColor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BackgroundColorStyle &&
            (identical(other.rgbColor, rgbColor) ||
                const DeepCollectionEquality()
                    .equals(other.rgbColor, rgbColor)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(rgbColor);

  @JsonKey(ignore: true)
  @override
  _$BackgroundColorStyleCopyWith<_BackgroundColorStyle> get copyWith =>
      __$BackgroundColorStyleCopyWithImpl<_BackgroundColorStyle>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BackgroundColorStyleToJson(this);
  }
}

abstract class _BackgroundColorStyle implements BackgroundColorStyle {
  const factory _BackgroundColorStyle({required RgbColor rgbColor}) =
      _$_BackgroundColorStyle;

  factory _BackgroundColorStyle.fromJson(Map<String, dynamic> json) =
      _$_BackgroundColorStyle.fromJson;

  @override
  RgbColor get rgbColor => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BackgroundColorStyleCopyWith<_BackgroundColorStyle> get copyWith =>
      throw _privateConstructorUsedError;
}

PaddingMetrics _$PaddingMetricsFromJson(Map<String, dynamic> json) {
  return _PaddingMetrics.fromJson(json);
}

/// @nodoc
class _$PaddingMetricsTearOff {
  const _$PaddingMetricsTearOff();

  _PaddingMetrics call({int? top, int? right, int? bottom, int? left}) {
    return _PaddingMetrics(
      top: top,
      right: right,
      bottom: bottom,
      left: left,
    );
  }

  PaddingMetrics fromJson(Map<String, Object> json) {
    return PaddingMetrics.fromJson(json);
  }
}

/// @nodoc
const $PaddingMetrics = _$PaddingMetricsTearOff();

/// @nodoc
mixin _$PaddingMetrics {
  int? get top => throw _privateConstructorUsedError;
  int? get right => throw _privateConstructorUsedError;
  int? get bottom => throw _privateConstructorUsedError;
  int? get left => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaddingMetricsCopyWith<PaddingMetrics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaddingMetricsCopyWith<$Res> {
  factory $PaddingMetricsCopyWith(
          PaddingMetrics value, $Res Function(PaddingMetrics) then) =
      _$PaddingMetricsCopyWithImpl<$Res>;
  $Res call({int? top, int? right, int? bottom, int? left});
}

/// @nodoc
class _$PaddingMetricsCopyWithImpl<$Res>
    implements $PaddingMetricsCopyWith<$Res> {
  _$PaddingMetricsCopyWithImpl(this._value, this._then);

  final PaddingMetrics _value;
  // ignore: unused_field
  final $Res Function(PaddingMetrics) _then;

  @override
  $Res call({
    Object? top = freezed,
    Object? right = freezed,
    Object? bottom = freezed,
    Object? left = freezed,
  }) {
    return _then(_value.copyWith(
      top: top == freezed
          ? _value.top
          : top // ignore: cast_nullable_to_non_nullable
              as int?,
      right: right == freezed
          ? _value.right
          : right // ignore: cast_nullable_to_non_nullable
              as int?,
      bottom: bottom == freezed
          ? _value.bottom
          : bottom // ignore: cast_nullable_to_non_nullable
              as int?,
      left: left == freezed
          ? _value.left
          : left // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$PaddingMetricsCopyWith<$Res>
    implements $PaddingMetricsCopyWith<$Res> {
  factory _$PaddingMetricsCopyWith(
          _PaddingMetrics value, $Res Function(_PaddingMetrics) then) =
      __$PaddingMetricsCopyWithImpl<$Res>;
  @override
  $Res call({int? top, int? right, int? bottom, int? left});
}

/// @nodoc
class __$PaddingMetricsCopyWithImpl<$Res>
    extends _$PaddingMetricsCopyWithImpl<$Res>
    implements _$PaddingMetricsCopyWith<$Res> {
  __$PaddingMetricsCopyWithImpl(
      _PaddingMetrics _value, $Res Function(_PaddingMetrics) _then)
      : super(_value, (v) => _then(v as _PaddingMetrics));

  @override
  _PaddingMetrics get _value => super._value as _PaddingMetrics;

  @override
  $Res call({
    Object? top = freezed,
    Object? right = freezed,
    Object? bottom = freezed,
    Object? left = freezed,
  }) {
    return _then(_PaddingMetrics(
      top: top == freezed
          ? _value.top
          : top // ignore: cast_nullable_to_non_nullable
              as int?,
      right: right == freezed
          ? _value.right
          : right // ignore: cast_nullable_to_non_nullable
              as int?,
      bottom: bottom == freezed
          ? _value.bottom
          : bottom // ignore: cast_nullable_to_non_nullable
              as int?,
      left: left == freezed
          ? _value.left
          : left // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaddingMetrics implements _PaddingMetrics {
  const _$_PaddingMetrics({this.top, this.right, this.bottom, this.left});

  factory _$_PaddingMetrics.fromJson(Map<String, dynamic> json) =>
      _$_$_PaddingMetricsFromJson(json);

  @override
  final int? top;
  @override
  final int? right;
  @override
  final int? bottom;
  @override
  final int? left;

  @override
  String toString() {
    return 'PaddingMetrics(top: $top, right: $right, bottom: $bottom, left: $left)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PaddingMetrics &&
            (identical(other.top, top) ||
                const DeepCollectionEquality().equals(other.top, top)) &&
            (identical(other.right, right) ||
                const DeepCollectionEquality().equals(other.right, right)) &&
            (identical(other.bottom, bottom) ||
                const DeepCollectionEquality().equals(other.bottom, bottom)) &&
            (identical(other.left, left) ||
                const DeepCollectionEquality().equals(other.left, left)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(top) ^
      const DeepCollectionEquality().hash(right) ^
      const DeepCollectionEquality().hash(bottom) ^
      const DeepCollectionEquality().hash(left);

  @JsonKey(ignore: true)
  @override
  _$PaddingMetricsCopyWith<_PaddingMetrics> get copyWith =>
      __$PaddingMetricsCopyWithImpl<_PaddingMetrics>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PaddingMetricsToJson(this);
  }
}

abstract class _PaddingMetrics implements PaddingMetrics {
  const factory _PaddingMetrics(
      {int? top, int? right, int? bottom, int? left}) = _$_PaddingMetrics;

  factory _PaddingMetrics.fromJson(Map<String, dynamic> json) =
      _$_PaddingMetrics.fromJson;

  @override
  int? get top => throw _privateConstructorUsedError;
  @override
  int? get right => throw _privateConstructorUsedError;
  @override
  int? get bottom => throw _privateConstructorUsedError;
  @override
  int? get left => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PaddingMetricsCopyWith<_PaddingMetrics> get copyWith =>
      throw _privateConstructorUsedError;
}

DefaultFormatTextFormat _$DefaultFormatTextFormatFromJson(
    Map<String, dynamic> json) {
  return _DefaultFormatTextFormat.fromJson(json);
}

/// @nodoc
class _$DefaultFormatTextFormatTearOff {
  const _$DefaultFormatTextFormatTearOff();

  _DefaultFormatTextFormat call(
      {int? fontSize,
      bool? bold,
      bool? italic,
      bool? strikethrough,
      bool? underline}) {
    return _DefaultFormatTextFormat(
      fontSize: fontSize,
      bold: bold,
      italic: italic,
      strikethrough: strikethrough,
      underline: underline,
    );
  }

  DefaultFormatTextFormat fromJson(Map<String, Object> json) {
    return DefaultFormatTextFormat.fromJson(json);
  }
}

/// @nodoc
const $DefaultFormatTextFormat = _$DefaultFormatTextFormatTearOff();

/// @nodoc
mixin _$DefaultFormatTextFormat {
// @required this.foregroundColor,
  int? get fontSize => throw _privateConstructorUsedError;
  bool? get bold => throw _privateConstructorUsedError;
  bool? get italic => throw _privateConstructorUsedError;
  bool? get strikethrough => throw _privateConstructorUsedError;
  bool? get underline => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DefaultFormatTextFormatCopyWith<DefaultFormatTextFormat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DefaultFormatTextFormatCopyWith<$Res> {
  factory $DefaultFormatTextFormatCopyWith(DefaultFormatTextFormat value,
          $Res Function(DefaultFormatTextFormat) then) =
      _$DefaultFormatTextFormatCopyWithImpl<$Res>;
  $Res call(
      {int? fontSize,
      bool? bold,
      bool? italic,
      bool? strikethrough,
      bool? underline});
}

/// @nodoc
class _$DefaultFormatTextFormatCopyWithImpl<$Res>
    implements $DefaultFormatTextFormatCopyWith<$Res> {
  _$DefaultFormatTextFormatCopyWithImpl(this._value, this._then);

  final DefaultFormatTextFormat _value;
  // ignore: unused_field
  final $Res Function(DefaultFormatTextFormat) _then;

  @override
  $Res call({
    Object? fontSize = freezed,
    Object? bold = freezed,
    Object? italic = freezed,
    Object? strikethrough = freezed,
    Object? underline = freezed,
  }) {
    return _then(_value.copyWith(
      fontSize: fontSize == freezed
          ? _value.fontSize
          : fontSize // ignore: cast_nullable_to_non_nullable
              as int?,
      bold: bold == freezed
          ? _value.bold
          : bold // ignore: cast_nullable_to_non_nullable
              as bool?,
      italic: italic == freezed
          ? _value.italic
          : italic // ignore: cast_nullable_to_non_nullable
              as bool?,
      strikethrough: strikethrough == freezed
          ? _value.strikethrough
          : strikethrough // ignore: cast_nullable_to_non_nullable
              as bool?,
      underline: underline == freezed
          ? _value.underline
          : underline // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$DefaultFormatTextFormatCopyWith<$Res>
    implements $DefaultFormatTextFormatCopyWith<$Res> {
  factory _$DefaultFormatTextFormatCopyWith(_DefaultFormatTextFormat value,
          $Res Function(_DefaultFormatTextFormat) then) =
      __$DefaultFormatTextFormatCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? fontSize,
      bool? bold,
      bool? italic,
      bool? strikethrough,
      bool? underline});
}

/// @nodoc
class __$DefaultFormatTextFormatCopyWithImpl<$Res>
    extends _$DefaultFormatTextFormatCopyWithImpl<$Res>
    implements _$DefaultFormatTextFormatCopyWith<$Res> {
  __$DefaultFormatTextFormatCopyWithImpl(_DefaultFormatTextFormat _value,
      $Res Function(_DefaultFormatTextFormat) _then)
      : super(_value, (v) => _then(v as _DefaultFormatTextFormat));

  @override
  _DefaultFormatTextFormat get _value =>
      super._value as _DefaultFormatTextFormat;

  @override
  $Res call({
    Object? fontSize = freezed,
    Object? bold = freezed,
    Object? italic = freezed,
    Object? strikethrough = freezed,
    Object? underline = freezed,
  }) {
    return _then(_DefaultFormatTextFormat(
      fontSize: fontSize == freezed
          ? _value.fontSize
          : fontSize // ignore: cast_nullable_to_non_nullable
              as int?,
      bold: bold == freezed
          ? _value.bold
          : bold // ignore: cast_nullable_to_non_nullable
              as bool?,
      italic: italic == freezed
          ? _value.italic
          : italic // ignore: cast_nullable_to_non_nullable
              as bool?,
      strikethrough: strikethrough == freezed
          ? _value.strikethrough
          : strikethrough // ignore: cast_nullable_to_non_nullable
              as bool?,
      underline: underline == freezed
          ? _value.underline
          : underline // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DefaultFormatTextFormat implements _DefaultFormatTextFormat {
  const _$_DefaultFormatTextFormat(
      {this.fontSize,
      this.bold,
      this.italic,
      this.strikethrough,
      this.underline});

  factory _$_DefaultFormatTextFormat.fromJson(Map<String, dynamic> json) =>
      _$_$_DefaultFormatTextFormatFromJson(json);

  @override // @required this.foregroundColor,
  final int? fontSize;
  @override
  final bool? bold;
  @override
  final bool? italic;
  @override
  final bool? strikethrough;
  @override
  final bool? underline;

  @override
  String toString() {
    return 'DefaultFormatTextFormat(fontSize: $fontSize, bold: $bold, italic: $italic, strikethrough: $strikethrough, underline: $underline)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DefaultFormatTextFormat &&
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
                    .equals(other.underline, underline)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(fontSize) ^
      const DeepCollectionEquality().hash(bold) ^
      const DeepCollectionEquality().hash(italic) ^
      const DeepCollectionEquality().hash(strikethrough) ^
      const DeepCollectionEquality().hash(underline);

  @JsonKey(ignore: true)
  @override
  _$DefaultFormatTextFormatCopyWith<_DefaultFormatTextFormat> get copyWith =>
      __$DefaultFormatTextFormatCopyWithImpl<_DefaultFormatTextFormat>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DefaultFormatTextFormatToJson(this);
  }
}

abstract class _DefaultFormatTextFormat implements DefaultFormatTextFormat {
  const factory _DefaultFormatTextFormat(
      {int? fontSize,
      bool? bold,
      bool? italic,
      bool? strikethrough,
      bool? underline}) = _$_DefaultFormatTextFormat;

  factory _DefaultFormatTextFormat.fromJson(Map<String, dynamic> json) =
      _$_DefaultFormatTextFormat.fromJson;

  @override // @required this.foregroundColor,
  int? get fontSize => throw _privateConstructorUsedError;
  @override
  bool? get bold => throw _privateConstructorUsedError;
  @override
  bool? get italic => throw _privateConstructorUsedError;
  @override
  bool? get strikethrough => throw _privateConstructorUsedError;
  @override
  bool? get underline => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DefaultFormatTextFormatCopyWith<_DefaultFormatTextFormat> get copyWith =>
      throw _privateConstructorUsedError;
}

SheetProperties _$SheetPropertiesFromJson(Map<String, dynamic> json) {
  return _SheetProperties.fromJson(json);
}

/// @nodoc
class _$SheetPropertiesTearOff {
  const _$SheetPropertiesTearOff();

  _SheetProperties call({required GridProperties gridProperties}) {
    return _SheetProperties(
      gridProperties: gridProperties,
    );
  }

  SheetProperties fromJson(Map<String, Object> json) {
    return SheetProperties.fromJson(json);
  }
}

/// @nodoc
const $SheetProperties = _$SheetPropertiesTearOff();

/// @nodoc
mixin _$SheetProperties {
// @required this.sheetId,
// @required this.title,
// @required this.index,
// @required this.sheetType,
  GridProperties get gridProperties => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SheetPropertiesCopyWith<SheetProperties> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SheetPropertiesCopyWith<$Res> {
  factory $SheetPropertiesCopyWith(
          SheetProperties value, $Res Function(SheetProperties) then) =
      _$SheetPropertiesCopyWithImpl<$Res>;
  $Res call({GridProperties gridProperties});

  $GridPropertiesCopyWith<$Res> get gridProperties;
}

/// @nodoc
class _$SheetPropertiesCopyWithImpl<$Res>
    implements $SheetPropertiesCopyWith<$Res> {
  _$SheetPropertiesCopyWithImpl(this._value, this._then);

  final SheetProperties _value;
  // ignore: unused_field
  final $Res Function(SheetProperties) _then;

  @override
  $Res call({
    Object? gridProperties = freezed,
  }) {
    return _then(_value.copyWith(
      gridProperties: gridProperties == freezed
          ? _value.gridProperties
          : gridProperties // ignore: cast_nullable_to_non_nullable
              as GridProperties,
    ));
  }

  @override
  $GridPropertiesCopyWith<$Res> get gridProperties {
    return $GridPropertiesCopyWith<$Res>(_value.gridProperties, (value) {
      return _then(_value.copyWith(gridProperties: value));
    });
  }
}

/// @nodoc
abstract class _$SheetPropertiesCopyWith<$Res>
    implements $SheetPropertiesCopyWith<$Res> {
  factory _$SheetPropertiesCopyWith(
          _SheetProperties value, $Res Function(_SheetProperties) then) =
      __$SheetPropertiesCopyWithImpl<$Res>;
  @override
  $Res call({GridProperties gridProperties});

  @override
  $GridPropertiesCopyWith<$Res> get gridProperties;
}

/// @nodoc
class __$SheetPropertiesCopyWithImpl<$Res>
    extends _$SheetPropertiesCopyWithImpl<$Res>
    implements _$SheetPropertiesCopyWith<$Res> {
  __$SheetPropertiesCopyWithImpl(
      _SheetProperties _value, $Res Function(_SheetProperties) _then)
      : super(_value, (v) => _then(v as _SheetProperties));

  @override
  _SheetProperties get _value => super._value as _SheetProperties;

  @override
  $Res call({
    Object? gridProperties = freezed,
  }) {
    return _then(_SheetProperties(
      gridProperties: gridProperties == freezed
          ? _value.gridProperties
          : gridProperties // ignore: cast_nullable_to_non_nullable
              as GridProperties,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SheetProperties implements _SheetProperties {
  const _$_SheetProperties({required this.gridProperties});

  factory _$_SheetProperties.fromJson(Map<String, dynamic> json) =>
      _$_$_SheetPropertiesFromJson(json);

  @override // @required this.sheetId,
// @required this.title,
// @required this.index,
// @required this.sheetType,
  final GridProperties gridProperties;

  @override
  String toString() {
    return 'SheetProperties(gridProperties: $gridProperties)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SheetProperties &&
            (identical(other.gridProperties, gridProperties) ||
                const DeepCollectionEquality()
                    .equals(other.gridProperties, gridProperties)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(gridProperties);

  @JsonKey(ignore: true)
  @override
  _$SheetPropertiesCopyWith<_SheetProperties> get copyWith =>
      __$SheetPropertiesCopyWithImpl<_SheetProperties>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SheetPropertiesToJson(this);
  }
}

abstract class _SheetProperties implements SheetProperties {
  const factory _SheetProperties({required GridProperties gridProperties}) =
      _$_SheetProperties;

  factory _SheetProperties.fromJson(Map<String, dynamic> json) =
      _$_SheetProperties.fromJson;

  @override // @required this.sheetId,
// @required this.title,
// @required this.index,
// @required this.sheetType,
  GridProperties get gridProperties => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SheetPropertiesCopyWith<_SheetProperties> get copyWith =>
      throw _privateConstructorUsedError;
}

GridProperties _$GridPropertiesFromJson(Map<String, dynamic> json) {
  return _GridProperties.fromJson(json);
}

/// @nodoc
class _$GridPropertiesTearOff {
  const _$GridPropertiesTearOff();

  _GridProperties call({required int rowCount, required int columnCount}) {
    return _GridProperties(
      rowCount: rowCount,
      columnCount: columnCount,
    );
  }

  GridProperties fromJson(Map<String, Object> json) {
    return GridProperties.fromJson(json);
  }
}

/// @nodoc
const $GridProperties = _$GridPropertiesTearOff();

/// @nodoc
mixin _$GridProperties {
  int get rowCount => throw _privateConstructorUsedError;
  int get columnCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GridPropertiesCopyWith<GridProperties> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GridPropertiesCopyWith<$Res> {
  factory $GridPropertiesCopyWith(
          GridProperties value, $Res Function(GridProperties) then) =
      _$GridPropertiesCopyWithImpl<$Res>;
  $Res call({int rowCount, int columnCount});
}

/// @nodoc
class _$GridPropertiesCopyWithImpl<$Res>
    implements $GridPropertiesCopyWith<$Res> {
  _$GridPropertiesCopyWithImpl(this._value, this._then);

  final GridProperties _value;
  // ignore: unused_field
  final $Res Function(GridProperties) _then;

  @override
  $Res call({
    Object? rowCount = freezed,
    Object? columnCount = freezed,
  }) {
    return _then(_value.copyWith(
      rowCount: rowCount == freezed
          ? _value.rowCount
          : rowCount // ignore: cast_nullable_to_non_nullable
              as int,
      columnCount: columnCount == freezed
          ? _value.columnCount
          : columnCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$GridPropertiesCopyWith<$Res>
    implements $GridPropertiesCopyWith<$Res> {
  factory _$GridPropertiesCopyWith(
          _GridProperties value, $Res Function(_GridProperties) then) =
      __$GridPropertiesCopyWithImpl<$Res>;
  @override
  $Res call({int rowCount, int columnCount});
}

/// @nodoc
class __$GridPropertiesCopyWithImpl<$Res>
    extends _$GridPropertiesCopyWithImpl<$Res>
    implements _$GridPropertiesCopyWith<$Res> {
  __$GridPropertiesCopyWithImpl(
      _GridProperties _value, $Res Function(_GridProperties) _then)
      : super(_value, (v) => _then(v as _GridProperties));

  @override
  _GridProperties get _value => super._value as _GridProperties;

  @override
  $Res call({
    Object? rowCount = freezed,
    Object? columnCount = freezed,
  }) {
    return _then(_GridProperties(
      rowCount: rowCount == freezed
          ? _value.rowCount
          : rowCount // ignore: cast_nullable_to_non_nullable
              as int,
      columnCount: columnCount == freezed
          ? _value.columnCount
          : columnCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GridProperties extends _GridProperties {
  const _$_GridProperties({required this.rowCount, required this.columnCount})
      : super._();

  factory _$_GridProperties.fromJson(Map<String, dynamic> json) =>
      _$_$_GridPropertiesFromJson(json);

  @override
  final int rowCount;
  @override
  final int columnCount;

  @override
  String toString() {
    return 'GridProperties(rowCount: $rowCount, columnCount: $columnCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GridProperties &&
            (identical(other.rowCount, rowCount) ||
                const DeepCollectionEquality()
                    .equals(other.rowCount, rowCount)) &&
            (identical(other.columnCount, columnCount) ||
                const DeepCollectionEquality()
                    .equals(other.columnCount, columnCount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(rowCount) ^
      const DeepCollectionEquality().hash(columnCount);

  @JsonKey(ignore: true)
  @override
  _$GridPropertiesCopyWith<_GridProperties> get copyWith =>
      __$GridPropertiesCopyWithImpl<_GridProperties>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GridPropertiesToJson(this);
  }
}

abstract class _GridProperties extends GridProperties {
  const factory _GridProperties(
      {required int rowCount, required int columnCount}) = _$_GridProperties;
  const _GridProperties._() : super._();

  factory _GridProperties.fromJson(Map<String, dynamic> json) =
      _$_GridProperties.fromJson;

  @override
  int get rowCount => throw _privateConstructorUsedError;
  @override
  int get columnCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GridPropertiesCopyWith<_GridProperties> get copyWith =>
      throw _privateConstructorUsedError;
}

PixelSizeWrapper _$PixelSizeWrapperFromJson(Map<String, dynamic> json) {
  return _PixelSizeWrapper.fromJson(json);
}

/// @nodoc
class _$PixelSizeWrapperTearOff {
  const _$PixelSizeWrapperTearOff();

  _PixelSizeWrapper call({int? pixelSize}) {
    return _PixelSizeWrapper(
      pixelSize: pixelSize,
    );
  }

  PixelSizeWrapper fromJson(Map<String, Object> json) {
    return PixelSizeWrapper.fromJson(json);
  }
}

/// @nodoc
const $PixelSizeWrapper = _$PixelSizeWrapperTearOff();

/// @nodoc
mixin _$PixelSizeWrapper {
  int? get pixelSize => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PixelSizeWrapperCopyWith<PixelSizeWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PixelSizeWrapperCopyWith<$Res> {
  factory $PixelSizeWrapperCopyWith(
          PixelSizeWrapper value, $Res Function(PixelSizeWrapper) then) =
      _$PixelSizeWrapperCopyWithImpl<$Res>;
  $Res call({int? pixelSize});
}

/// @nodoc
class _$PixelSizeWrapperCopyWithImpl<$Res>
    implements $PixelSizeWrapperCopyWith<$Res> {
  _$PixelSizeWrapperCopyWithImpl(this._value, this._then);

  final PixelSizeWrapper _value;
  // ignore: unused_field
  final $Res Function(PixelSizeWrapper) _then;

  @override
  $Res call({
    Object? pixelSize = freezed,
  }) {
    return _then(_value.copyWith(
      pixelSize: pixelSize == freezed
          ? _value.pixelSize
          : pixelSize // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$PixelSizeWrapperCopyWith<$Res>
    implements $PixelSizeWrapperCopyWith<$Res> {
  factory _$PixelSizeWrapperCopyWith(
          _PixelSizeWrapper value, $Res Function(_PixelSizeWrapper) then) =
      __$PixelSizeWrapperCopyWithImpl<$Res>;
  @override
  $Res call({int? pixelSize});
}

/// @nodoc
class __$PixelSizeWrapperCopyWithImpl<$Res>
    extends _$PixelSizeWrapperCopyWithImpl<$Res>
    implements _$PixelSizeWrapperCopyWith<$Res> {
  __$PixelSizeWrapperCopyWithImpl(
      _PixelSizeWrapper _value, $Res Function(_PixelSizeWrapper) _then)
      : super(_value, (v) => _then(v as _PixelSizeWrapper));

  @override
  _PixelSizeWrapper get _value => super._value as _PixelSizeWrapper;

  @override
  $Res call({
    Object? pixelSize = freezed,
  }) {
    return _then(_PixelSizeWrapper(
      pixelSize: pixelSize == freezed
          ? _value.pixelSize
          : pixelSize // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PixelSizeWrapper implements _PixelSizeWrapper {
  const _$_PixelSizeWrapper({this.pixelSize});

  factory _$_PixelSizeWrapper.fromJson(Map<String, dynamic> json) =>
      _$_$_PixelSizeWrapperFromJson(json);

  @override
  final int? pixelSize;

  @override
  String toString() {
    return 'PixelSizeWrapper(pixelSize: $pixelSize)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PixelSizeWrapper &&
            (identical(other.pixelSize, pixelSize) ||
                const DeepCollectionEquality()
                    .equals(other.pixelSize, pixelSize)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(pixelSize);

  @JsonKey(ignore: true)
  @override
  _$PixelSizeWrapperCopyWith<_PixelSizeWrapper> get copyWith =>
      __$PixelSizeWrapperCopyWithImpl<_PixelSizeWrapper>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PixelSizeWrapperToJson(this);
  }
}

abstract class _PixelSizeWrapper implements PixelSizeWrapper {
  const factory _PixelSizeWrapper({int? pixelSize}) = _$_PixelSizeWrapper;

  factory _PixelSizeWrapper.fromJson(Map<String, dynamic> json) =
      _$_PixelSizeWrapper.fromJson;

  @override
  int? get pixelSize => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PixelSizeWrapperCopyWith<_PixelSizeWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

UserEnteredFormatTextFormat _$UserEnteredFormatTextFormatFromJson(
    Map<String, dynamic> json) {
  return _UserEnteredFormatTextFormat.fromJson(json);
}

/// @nodoc
class _$UserEnteredFormatTextFormatTearOff {
  const _$UserEnteredFormatTextFormatTearOff();

  _UserEnteredFormatTextFormat call(
      {required RgbColor foregroundColor,
      required BackgroundColorStyle foregroundColorStyle,
      bool? underline}) {
    return _UserEnteredFormatTextFormat(
      foregroundColor: foregroundColor,
      foregroundColorStyle: foregroundColorStyle,
      underline: underline,
    );
  }

  UserEnteredFormatTextFormat fromJson(Map<String, Object> json) {
    return UserEnteredFormatTextFormat.fromJson(json);
  }
}

/// @nodoc
const $UserEnteredFormatTextFormat = _$UserEnteredFormatTextFormatTearOff();

/// @nodoc
mixin _$UserEnteredFormatTextFormat {
// @required this.fontFamily,
  RgbColor get foregroundColor => throw _privateConstructorUsedError;
  BackgroundColorStyle get foregroundColorStyle =>
      throw _privateConstructorUsedError;
  bool? get underline => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserEnteredFormatTextFormatCopyWith<UserEnteredFormatTextFormat>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEnteredFormatTextFormatCopyWith<$Res> {
  factory $UserEnteredFormatTextFormatCopyWith(
          UserEnteredFormatTextFormat value,
          $Res Function(UserEnteredFormatTextFormat) then) =
      _$UserEnteredFormatTextFormatCopyWithImpl<$Res>;
  $Res call(
      {RgbColor foregroundColor,
      BackgroundColorStyle foregroundColorStyle,
      bool? underline});

  $RgbColorCopyWith<$Res> get foregroundColor;
  $BackgroundColorStyleCopyWith<$Res> get foregroundColorStyle;
}

/// @nodoc
class _$UserEnteredFormatTextFormatCopyWithImpl<$Res>
    implements $UserEnteredFormatTextFormatCopyWith<$Res> {
  _$UserEnteredFormatTextFormatCopyWithImpl(this._value, this._then);

  final UserEnteredFormatTextFormat _value;
  // ignore: unused_field
  final $Res Function(UserEnteredFormatTextFormat) _then;

  @override
  $Res call({
    Object? foregroundColor = freezed,
    Object? foregroundColorStyle = freezed,
    Object? underline = freezed,
  }) {
    return _then(_value.copyWith(
      foregroundColor: foregroundColor == freezed
          ? _value.foregroundColor
          : foregroundColor // ignore: cast_nullable_to_non_nullable
              as RgbColor,
      foregroundColorStyle: foregroundColorStyle == freezed
          ? _value.foregroundColorStyle
          : foregroundColorStyle // ignore: cast_nullable_to_non_nullable
              as BackgroundColorStyle,
      underline: underline == freezed
          ? _value.underline
          : underline // ignore: cast_nullable_to_non_nullable
              as bool?,
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
abstract class _$UserEnteredFormatTextFormatCopyWith<$Res>
    implements $UserEnteredFormatTextFormatCopyWith<$Res> {
  factory _$UserEnteredFormatTextFormatCopyWith(
          _UserEnteredFormatTextFormat value,
          $Res Function(_UserEnteredFormatTextFormat) then) =
      __$UserEnteredFormatTextFormatCopyWithImpl<$Res>;
  @override
  $Res call(
      {RgbColor foregroundColor,
      BackgroundColorStyle foregroundColorStyle,
      bool? underline});

  @override
  $RgbColorCopyWith<$Res> get foregroundColor;
  @override
  $BackgroundColorStyleCopyWith<$Res> get foregroundColorStyle;
}

/// @nodoc
class __$UserEnteredFormatTextFormatCopyWithImpl<$Res>
    extends _$UserEnteredFormatTextFormatCopyWithImpl<$Res>
    implements _$UserEnteredFormatTextFormatCopyWith<$Res> {
  __$UserEnteredFormatTextFormatCopyWithImpl(
      _UserEnteredFormatTextFormat _value,
      $Res Function(_UserEnteredFormatTextFormat) _then)
      : super(_value, (v) => _then(v as _UserEnteredFormatTextFormat));

  @override
  _UserEnteredFormatTextFormat get _value =>
      super._value as _UserEnteredFormatTextFormat;

  @override
  $Res call({
    Object? foregroundColor = freezed,
    Object? foregroundColorStyle = freezed,
    Object? underline = freezed,
  }) {
    return _then(_UserEnteredFormatTextFormat(
      foregroundColor: foregroundColor == freezed
          ? _value.foregroundColor
          : foregroundColor // ignore: cast_nullable_to_non_nullable
              as RgbColor,
      foregroundColorStyle: foregroundColorStyle == freezed
          ? _value.foregroundColorStyle
          : foregroundColorStyle // ignore: cast_nullable_to_non_nullable
              as BackgroundColorStyle,
      underline: underline == freezed
          ? _value.underline
          : underline // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserEnteredFormatTextFormat implements _UserEnteredFormatTextFormat {
  const _$_UserEnteredFormatTextFormat(
      {required this.foregroundColor,
      required this.foregroundColorStyle,
      this.underline});

  factory _$_UserEnteredFormatTextFormat.fromJson(Map<String, dynamic> json) =>
      _$_$_UserEnteredFormatTextFormatFromJson(json);

  @override // @required this.fontFamily,
  final RgbColor foregroundColor;
  @override
  final BackgroundColorStyle foregroundColorStyle;
  @override
  final bool? underline;

  @override
  String toString() {
    return 'UserEnteredFormatTextFormat(foregroundColor: $foregroundColor, foregroundColorStyle: $foregroundColorStyle, underline: $underline)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserEnteredFormatTextFormat &&
            (identical(other.foregroundColor, foregroundColor) ||
                const DeepCollectionEquality()
                    .equals(other.foregroundColor, foregroundColor)) &&
            (identical(other.foregroundColorStyle, foregroundColorStyle) ||
                const DeepCollectionEquality().equals(
                    other.foregroundColorStyle, foregroundColorStyle)) &&
            (identical(other.underline, underline) ||
                const DeepCollectionEquality()
                    .equals(other.underline, underline)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(foregroundColor) ^
      const DeepCollectionEquality().hash(foregroundColorStyle) ^
      const DeepCollectionEquality().hash(underline);

  @JsonKey(ignore: true)
  @override
  _$UserEnteredFormatTextFormatCopyWith<_UserEnteredFormatTextFormat>
      get copyWith => __$UserEnteredFormatTextFormatCopyWithImpl<
          _UserEnteredFormatTextFormat>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserEnteredFormatTextFormatToJson(this);
  }
}

abstract class _UserEnteredFormatTextFormat
    implements UserEnteredFormatTextFormat {
  const factory _UserEnteredFormatTextFormat(
      {required RgbColor foregroundColor,
      required BackgroundColorStyle foregroundColorStyle,
      bool? underline}) = _$_UserEnteredFormatTextFormat;

  factory _UserEnteredFormatTextFormat.fromJson(Map<String, dynamic> json) =
      _$_UserEnteredFormatTextFormat.fromJson;

  @override // @required this.fontFamily,
  RgbColor get foregroundColor => throw _privateConstructorUsedError;
  @override
  BackgroundColorStyle get foregroundColorStyle =>
      throw _privateConstructorUsedError;
  @override
  bool? get underline => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserEnteredFormatTextFormatCopyWith<_UserEnteredFormatTextFormat>
      get copyWith => throw _privateConstructorUsedError;
}

EffectiveValueClass _$EffectiveValueClassFromJson(Map<String, dynamic> json) {
  return _EffectiveValueClass.fromJson(json);
}

/// @nodoc
class _$EffectiveValueClassTearOff {
  const _$EffectiveValueClassTearOff();

  _EffectiveValueClass call({String? stringValue}) {
    return _EffectiveValueClass(
      stringValue: stringValue,
    );
  }

  EffectiveValueClass fromJson(Map<String, Object> json) {
    return EffectiveValueClass.fromJson(json);
  }
}

/// @nodoc
const $EffectiveValueClass = _$EffectiveValueClassTearOff();

/// @nodoc
mixin _$EffectiveValueClass {
  String? get stringValue => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EffectiveValueClassCopyWith<EffectiveValueClass> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EffectiveValueClassCopyWith<$Res> {
  factory $EffectiveValueClassCopyWith(
          EffectiveValueClass value, $Res Function(EffectiveValueClass) then) =
      _$EffectiveValueClassCopyWithImpl<$Res>;
  $Res call({String? stringValue});
}

/// @nodoc
class _$EffectiveValueClassCopyWithImpl<$Res>
    implements $EffectiveValueClassCopyWith<$Res> {
  _$EffectiveValueClassCopyWithImpl(this._value, this._then);

  final EffectiveValueClass _value;
  // ignore: unused_field
  final $Res Function(EffectiveValueClass) _then;

  @override
  $Res call({
    Object? stringValue = freezed,
  }) {
    return _then(_value.copyWith(
      stringValue: stringValue == freezed
          ? _value.stringValue
          : stringValue // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$EffectiveValueClassCopyWith<$Res>
    implements $EffectiveValueClassCopyWith<$Res> {
  factory _$EffectiveValueClassCopyWith(_EffectiveValueClass value,
          $Res Function(_EffectiveValueClass) then) =
      __$EffectiveValueClassCopyWithImpl<$Res>;
  @override
  $Res call({String? stringValue});
}

/// @nodoc
class __$EffectiveValueClassCopyWithImpl<$Res>
    extends _$EffectiveValueClassCopyWithImpl<$Res>
    implements _$EffectiveValueClassCopyWith<$Res> {
  __$EffectiveValueClassCopyWithImpl(
      _EffectiveValueClass _value, $Res Function(_EffectiveValueClass) _then)
      : super(_value, (v) => _then(v as _EffectiveValueClass));

  @override
  _EffectiveValueClass get _value => super._value as _EffectiveValueClass;

  @override
  $Res call({
    Object? stringValue = freezed,
  }) {
    return _then(_EffectiveValueClass(
      stringValue: stringValue == freezed
          ? _value.stringValue
          : stringValue // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EffectiveValueClass implements _EffectiveValueClass {
  const _$_EffectiveValueClass({this.stringValue});

  factory _$_EffectiveValueClass.fromJson(Map<String, dynamic> json) =>
      _$_$_EffectiveValueClassFromJson(json);

  @override
  final String? stringValue;

  @override
  String toString() {
    return 'EffectiveValueClass(stringValue: $stringValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EffectiveValueClass &&
            (identical(other.stringValue, stringValue) ||
                const DeepCollectionEquality()
                    .equals(other.stringValue, stringValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(stringValue);

  @JsonKey(ignore: true)
  @override
  _$EffectiveValueClassCopyWith<_EffectiveValueClass> get copyWith =>
      __$EffectiveValueClassCopyWithImpl<_EffectiveValueClass>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_EffectiveValueClassToJson(this);
  }
}

abstract class _EffectiveValueClass implements EffectiveValueClass {
  const factory _EffectiveValueClass({String? stringValue}) =
      _$_EffectiveValueClass;

  factory _EffectiveValueClass.fromJson(Map<String, dynamic> json) =
      _$_EffectiveValueClass.fromJson;

  @override
  String? get stringValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EffectiveValueClassCopyWith<_EffectiveValueClass> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$XyTearOff {
  const _$XyTearOff();

  _Xy call({required int x, required int y}) {
    return _Xy(
      x: x,
      y: y,
    );
  }
}

/// @nodoc
const $Xy = _$XyTearOff();

/// @nodoc
mixin _$Xy {
  int get x => throw _privateConstructorUsedError;
  int get y => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $XyCopyWith<Xy> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $XyCopyWith<$Res> {
  factory $XyCopyWith(Xy value, $Res Function(Xy) then) =
      _$XyCopyWithImpl<$Res>;
  $Res call({int x, int y});
}

/// @nodoc
class _$XyCopyWithImpl<$Res> implements $XyCopyWith<$Res> {
  _$XyCopyWithImpl(this._value, this._then);

  final Xy _value;
  // ignore: unused_field
  final $Res Function(Xy) _then;

  @override
  $Res call({
    Object? x = freezed,
    Object? y = freezed,
  }) {
    return _then(_value.copyWith(
      x: x == freezed
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as int,
      y: y == freezed
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$XyCopyWith<$Res> implements $XyCopyWith<$Res> {
  factory _$XyCopyWith(_Xy value, $Res Function(_Xy) then) =
      __$XyCopyWithImpl<$Res>;
  @override
  $Res call({int x, int y});
}

/// @nodoc
class __$XyCopyWithImpl<$Res> extends _$XyCopyWithImpl<$Res>
    implements _$XyCopyWith<$Res> {
  __$XyCopyWithImpl(_Xy _value, $Res Function(_Xy) _then)
      : super(_value, (v) => _then(v as _Xy));

  @override
  _Xy get _value => super._value as _Xy;

  @override
  $Res call({
    Object? x = freezed,
    Object? y = freezed,
  }) {
    return _then(_Xy(
      x: x == freezed
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as int,
      y: y == freezed
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Xy implements _Xy {
  const _$_Xy({required this.x, required this.y});

  @override
  final int x;
  @override
  final int y;

  @override
  String toString() {
    return 'Xy(x: $x, y: $y)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Xy &&
            (identical(other.x, x) ||
                const DeepCollectionEquality().equals(other.x, x)) &&
            (identical(other.y, y) ||
                const DeepCollectionEquality().equals(other.y, y)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(x) ^
      const DeepCollectionEquality().hash(y);

  @JsonKey(ignore: true)
  @override
  _$XyCopyWith<_Xy> get copyWith => __$XyCopyWithImpl<_Xy>(this, _$identity);
}

abstract class _Xy implements Xy {
  const factory _Xy({required int x, required int y}) = _$_Xy;

  @override
  int get x => throw _privateConstructorUsedError;
  @override
  int get y => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$XyCopyWith<_Xy> get copyWith => throw _privateConstructorUsedError;
}
