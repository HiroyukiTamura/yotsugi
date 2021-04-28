import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:itsumuso/json_data/single_border.dart';
import 'package:itsumuso/json_data/text_format_run.dart';
import 'package:itsumuso/json_data/value.dart';

part 'spreadsheet_data.freezed.dart';

part 'spreadsheet_data.g.dart';

@freezed
class SpreadSheetData with _$SpreadSheetData {
  const factory SpreadSheetData({
    required String spreadsheetId,
    // final SpreadSheetDataProps properties;
    required List<Sheet> sheets,
    required String spreadsheetUrl,
  }) = _SpreadSheetData;

  factory SpreadSheetData.fromJson(Map<String, dynamic> json) =>
      _$SpreadSheetDataFromJson(json);
}

@freezed
class Sheet with _$Sheet {
  const factory Sheet({
    required SheetProperties properties,
    @Default(<Datum>[]) List<Datum> data,
    // @required this.conditionalFormats,
  }) = _Sheet;

  const Sheet._();

  factory Sheet.fromJson(Map<String, dynamic> json) => _$SheetFromJson(json);

  int get lastColumn => data.first._lastColumn;

  int get lastRow => data.first._lastRow;

  List<List<Value?>> get getDataWithNullItem => data.first._getDataWithNullItem;

  Xy getXy(int index) => data.first._getXy(index);

  void collapseEmptyRowAndColumn(List<List<Value?>> map) =>
      data.first._collapseEmptyRowAndColumn(map);
// final List<ConditionalFormat> conditionalFormats;
}

@freezed
class Datum with _$Datum {
  const factory Datum({
    @Default(<RowDatum>[]) List<RowDatum> rowData,
    @Default(<PixelSizeWrapper>[]) List<PixelSizeWrapper> rowMetadata,
    @Default(<PixelSizeWrapper>[]) List<PixelSizeWrapper> columnMetadata,
    // required this.rowData,
    // required this.rowMetadata,
    // required this.columnMetadata,
  }) = _Datum;

  const Datum._();

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

  int get _lastColumn {
    int mostLongRowLen = 0;

    rowData.asMap().forEach((i, value) {
      int len = value.values.length;
      if (len > mostLongRowLen) mostLongRowLen = len;
    });

    return mostLongRowLen;
  }

  int get _lastRow => rowData.length;

  Xy _getXy(int index) {
    int total = 0;
    for (var i = 0; i < rowData.length; i++) {
      total += rowData[i].values.length;
      if (total >= index) return Xy(x: total - index, y: i);
    }
    throw Exception('oops!');
  }

  List<List<Value?>> get _getDataWithNullItem {
    List<List<Value?>> map = [];
    rowData.asMap().forEach((rowCount, row) {
      map.add([...row.values]);
      int trailEmptyCells = _lastColumn - row.values.length;
      for (int i = 0; i < trailEmptyCells; i++) map[rowCount].add(null);
    });
    return map;
  }

  void _collapseEmptyRowAndColumn(List<List<Value?>> map) {
    map.asMap().forEach((rowIndex, element) {
      final isEmptyRow = element
          .where((rowItem) =>
              rowItem?.effectiveValue.stringValue?.isNotEmpty == true)
          .isEmpty;
      if (isEmptyRow)
        rowMetadata[rowIndex] = rowMetadata[rowIndex].copyWith(
          pixelSize: 8,
        );
    });
    final isColumnNotEmpty = List<bool>.filled(columnMetadata.length, false);
    map.asMap().forEach((rowIndex, row) {
      row.asMap().forEach((columnIndex, cell) {
        if (cell?.effectiveValue.stringValue?.isNotEmpty == true)
          isColumnNotEmpty[columnIndex] = true;
      });
    });
    isColumnNotEmpty.asMap().forEach((columnIndex, isNotEmpty) {
      if (!isNotEmpty) columnMetadata[columnIndex].copyWith(
        pixelSize: 8,
      );
    });
  }
}

@freezed
class RowDatum with _$RowDatum {
  const factory RowDatum({
    @Default(<Value?>[]) List<Value?> values,
  }) = _RowDatum;

  factory RowDatum.fromJson(Map<String, dynamic> json) =>
      _$RowDatumFromJson(json);
}

@freezed
class EffectiveFormat with _$EffectiveFormat {
  const factory EffectiveFormat({
    required RgbColor backgroundColor,
    required PaddingMetrics padding,
    String? verticalAlignment,
    String? wrapStrategy,
    required EffectiveFormatTextFormat textFormat,
    required BackgroundColorStyle backgroundColorStyle,
    required Borders borders,
    String? horizontalAlignment,
    String? hyperlinkDisplayType,
  }) = _EffectiveFormat;

  factory EffectiveFormat.fromJson(Map<String, dynamic> json) =>
      _$EffectiveFormatFromJson(json);
}

@freezed
class Borders with _$Borders {
  const factory Borders({
    required SingleBorder bottom,
    required SingleBorder left,
    required SingleBorder right,
    required SingleBorder top,
  }) = _Borders;

  factory Borders.fromJson(Map<String, dynamic> json) =>
      _$BordersFromJson(json);
}

@freezed
class RgbColor with _$RgbColor {
  const factory RgbColor({
    required double red,
    required double green,
    required double blue,
    required double alpha,
  }) = _RgbColor;

  factory RgbColor.fromJson(Map<String, dynamic> json) =>
      _$RgbColorFromJson(json);

  const RgbColor._();

  static const DENOMINATOR = 255;

  static double? _parseAsDouble(dynamic value) =>
      value is double ? value : (value as int?)?.toDouble();

  Color toColor() => Color.fromARGB(_calcColorInt(red), _calcColorInt(green),
      _calcColorInt(blue), _calcAlphaInt(alpha));

  static int _calcColorInt(double? ratio) =>
      ((ratio ?? 1) * DENOMINATOR).toInt();

  static int _calcAlphaInt(double? ratio) =>
      ((1 - (ratio ?? 1)) * DENOMINATOR).toInt();
}

@freezed
class BackgroundColorStyle with _$BackgroundColorStyle {
  const factory BackgroundColorStyle({
    required RgbColor rgbColor,
  }) = _BackgroundColorStyle;

  factory BackgroundColorStyle.fromJson(Map<String, dynamic> json) =>
      _$BackgroundColorStyleFromJson(json);
}

@freezed
class PaddingMetrics with _$PaddingMetrics {
  const factory PaddingMetrics({
    int? top,
    int? right,
    int? bottom,
    int? left,
  }) = _PaddingMetrics;

  factory PaddingMetrics.fromJson(Map<String, dynamic> json) =>
      _$PaddingMetricsFromJson(json);
}

@freezed
class DefaultFormatTextFormat with _$DefaultFormatTextFormat {
  const factory DefaultFormatTextFormat({
    // @required this.foregroundColor,
    int? fontSize,
    bool? bold,
    bool? italic,
    bool? strikethrough,
    bool? underline,
    // @required this.foregroundColorStyle,
  }) = _DefaultFormatTextFormat;

  factory DefaultFormatTextFormat.fromJson(Map<String, dynamic> json) =>
      _$DefaultFormatTextFormatFromJson(json);
}

@freezed
class SheetProperties with _$SheetProperties {
  const factory SheetProperties({
    // @required this.sheetId,
    // @required this.title,
    // @required this.index,
    // @required this.sheetType,
    required GridProperties gridProperties,
  }) = _SheetProperties;

  factory SheetProperties.fromJson(Map<String, dynamic> json) =>
      _$SheetPropertiesFromJson(json);
}

@freezed
class GridProperties with _$GridProperties {
  const factory GridProperties({
    required int rowCount,
    required int columnCount,
  }) = _GridProperties;

  const GridProperties._();

  factory GridProperties.fromJson(Map<String, dynamic> json) =>
      _$GridPropertiesFromJson(json);

  int get cellCount => rowCount * columnCount;
}

@freezed
class PixelSizeWrapper with _$PixelSizeWrapper {
  const factory PixelSizeWrapper({
    int? pixelSize,
  }) = _PixelSizeWrapper;

  factory PixelSizeWrapper.fromJson(Map<String, dynamic> json) =>
      _$PixelSizeWrapperFromJson(json);
}

@freezed
class UserEnteredFormatTextFormat with _$UserEnteredFormatTextFormat {
  const factory UserEnteredFormatTextFormat({
    // @required this.fontFamily,
    required RgbColor foregroundColor,
    required BackgroundColorStyle foregroundColorStyle,
    bool? underline,
  }) = _UserEnteredFormatTextFormat;

  factory UserEnteredFormatTextFormat.fromJson(Map<String, dynamic> json) =>
      _$UserEnteredFormatTextFormatFromJson(json);
}

@freezed
class EffectiveValueClass with _$EffectiveValueClass {
  const factory EffectiveValueClass({
    String? stringValue,
  }) = _EffectiveValueClass;

  factory EffectiveValueClass.fromJson(Map<String, dynamic> json) =>
      _$EffectiveValueClassFromJson(json);
}

@freezed
class Xy with _$Xy {
  const factory Xy({
    required int x,
    required int y,
  }) = _Xy;
}
