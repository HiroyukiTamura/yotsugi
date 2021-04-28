// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spreadsheet_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SpreadSheetData _$_$_SpreadSheetDataFromJson(Map<String, dynamic> json) {
  return _$_SpreadSheetData(
    spreadsheetId: json['spreadsheetId'] as String,
    sheets: (json['sheets'] as List<dynamic>)
        .map((e) => Sheet.fromJson(e as Map<String, dynamic>))
        .toList(),
    spreadsheetUrl: json['spreadsheetUrl'] as String,
  );
}

Map<String, dynamic> _$_$_SpreadSheetDataToJson(_$_SpreadSheetData instance) =>
    <String, dynamic>{
      'spreadsheetId': instance.spreadsheetId,
      'sheets': instance.sheets,
      'spreadsheetUrl': instance.spreadsheetUrl,
    };

_$_Sheet _$_$_SheetFromJson(Map<String, dynamic> json) {
  return _$_Sheet(
    properties:
        SheetProperties.fromJson(json['properties'] as Map<String, dynamic>),
    data: (json['data'] as List<dynamic>?)
            ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$_$_SheetToJson(_$_Sheet instance) => <String, dynamic>{
      'properties': instance.properties,
      'data': instance.data,
    };

_$_Datum _$_$_DatumFromJson(Map<String, dynamic> json) {
  return _$_Datum(
    rowData: (json['rowData'] as List<dynamic>?)
            ?.map((e) => RowDatum.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    rowMetadata: (json['rowMetadata'] as List<dynamic>?)
            ?.map((e) => PixelSizeWrapper.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    columnMetadata: (json['columnMetadata'] as List<dynamic>?)
            ?.map((e) => PixelSizeWrapper.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$_$_DatumToJson(_$_Datum instance) => <String, dynamic>{
      'rowData': instance.rowData,
      'rowMetadata': instance.rowMetadata,
      'columnMetadata': instance.columnMetadata,
    };

_$_RowDatum _$_$_RowDatumFromJson(Map<String, dynamic> json) {
  return _$_RowDatum(
    values: (json['values'] as List<dynamic>?)
            ?.map((e) =>
                e == null ? null : Value.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$_$_RowDatumToJson(_$_RowDatum instance) =>
    <String, dynamic>{
      'values': instance.values,
    };

_$_EffectiveFormat _$_$_EffectiveFormatFromJson(Map<String, dynamic> json) {
  return _$_EffectiveFormat(
    backgroundColor:
        RgbColor.fromJson(json['backgroundColor'] as Map<String, dynamic>),
    padding: PaddingMetrics.fromJson(json['padding'] as Map<String, dynamic>),
    verticalAlignment: json['verticalAlignment'] as String?,
    wrapStrategy: json['wrapStrategy'] as String?,
    textFormat: EffectiveFormatTextFormat.fromJson(
        json['textFormat'] as Map<String, dynamic>),
    backgroundColorStyle: BackgroundColorStyle.fromJson(
        json['backgroundColorStyle'] as Map<String, dynamic>),
    borders: Borders.fromJson(json['borders'] as Map<String, dynamic>),
    horizontalAlignment: json['horizontalAlignment'] as String?,
    hyperlinkDisplayType: json['hyperlinkDisplayType'] as String?,
  );
}

Map<String, dynamic> _$_$_EffectiveFormatToJson(_$_EffectiveFormat instance) =>
    <String, dynamic>{
      'backgroundColor': instance.backgroundColor,
      'padding': instance.padding,
      'verticalAlignment': instance.verticalAlignment,
      'wrapStrategy': instance.wrapStrategy,
      'textFormat': instance.textFormat,
      'backgroundColorStyle': instance.backgroundColorStyle,
      'borders': instance.borders,
      'horizontalAlignment': instance.horizontalAlignment,
      'hyperlinkDisplayType': instance.hyperlinkDisplayType,
    };

_$_Borders _$_$_BordersFromJson(Map<String, dynamic> json) {
  return _$_Borders(
    bottom: SingleBorder.fromJson(json['bottom'] as Map<String, dynamic>),
    left: SingleBorder.fromJson(json['left'] as Map<String, dynamic>),
    right: SingleBorder.fromJson(json['right'] as Map<String, dynamic>),
    top: SingleBorder.fromJson(json['top'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_BordersToJson(_$_Borders instance) =>
    <String, dynamic>{
      'bottom': instance.bottom,
      'left': instance.left,
      'right': instance.right,
      'top': instance.top,
    };

_$_RgbColor _$_$_RgbColorFromJson(Map<String, dynamic> json) {
  return _$_RgbColor(
    red: (json['red'] as num).toDouble(),
    green: (json['green'] as num).toDouble(),
    blue: (json['blue'] as num).toDouble(),
    alpha: (json['alpha'] as num).toDouble(),
  );
}

Map<String, dynamic> _$_$_RgbColorToJson(_$_RgbColor instance) =>
    <String, dynamic>{
      'red': instance.red,
      'green': instance.green,
      'blue': instance.blue,
      'alpha': instance.alpha,
    };

_$_BackgroundColorStyle _$_$_BackgroundColorStyleFromJson(
    Map<String, dynamic> json) {
  return _$_BackgroundColorStyle(
    rgbColor: RgbColor.fromJson(json['rgbColor'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_BackgroundColorStyleToJson(
        _$_BackgroundColorStyle instance) =>
    <String, dynamic>{
      'rgbColor': instance.rgbColor,
    };

_$_PaddingMetrics _$_$_PaddingMetricsFromJson(Map<String, dynamic> json) {
  return _$_PaddingMetrics(
    top: json['top'] as int?,
    right: json['right'] as int?,
    bottom: json['bottom'] as int?,
    left: json['left'] as int?,
  );
}

Map<String, dynamic> _$_$_PaddingMetricsToJson(_$_PaddingMetrics instance) =>
    <String, dynamic>{
      'top': instance.top,
      'right': instance.right,
      'bottom': instance.bottom,
      'left': instance.left,
    };

_$_DefaultFormatTextFormat _$_$_DefaultFormatTextFormatFromJson(
    Map<String, dynamic> json) {
  return _$_DefaultFormatTextFormat(
    fontSize: json['fontSize'] as int?,
    bold: json['bold'] as bool?,
    italic: json['italic'] as bool?,
    strikethrough: json['strikethrough'] as bool?,
    underline: json['underline'] as bool?,
  );
}

Map<String, dynamic> _$_$_DefaultFormatTextFormatToJson(
        _$_DefaultFormatTextFormat instance) =>
    <String, dynamic>{
      'fontSize': instance.fontSize,
      'bold': instance.bold,
      'italic': instance.italic,
      'strikethrough': instance.strikethrough,
      'underline': instance.underline,
    };

_$_SheetProperties _$_$_SheetPropertiesFromJson(Map<String, dynamic> json) {
  return _$_SheetProperties(
    gridProperties:
        GridProperties.fromJson(json['gridProperties'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_SheetPropertiesToJson(_$_SheetProperties instance) =>
    <String, dynamic>{
      'gridProperties': instance.gridProperties,
    };

_$_GridProperties _$_$_GridPropertiesFromJson(Map<String, dynamic> json) {
  return _$_GridProperties(
    rowCount: json['rowCount'] as int,
    columnCount: json['columnCount'] as int,
  );
}

Map<String, dynamic> _$_$_GridPropertiesToJson(_$_GridProperties instance) =>
    <String, dynamic>{
      'rowCount': instance.rowCount,
      'columnCount': instance.columnCount,
    };

_$_PixelSizeWrapper _$_$_PixelSizeWrapperFromJson(Map<String, dynamic> json) {
  return _$_PixelSizeWrapper(
    pixelSize: json['pixelSize'] as int?,
  );
}

Map<String, dynamic> _$_$_PixelSizeWrapperToJson(
        _$_PixelSizeWrapper instance) =>
    <String, dynamic>{
      'pixelSize': instance.pixelSize,
    };

_$_UserEnteredFormatTextFormat _$_$_UserEnteredFormatTextFormatFromJson(
    Map<String, dynamic> json) {
  return _$_UserEnteredFormatTextFormat(
    foregroundColor:
        RgbColor.fromJson(json['foregroundColor'] as Map<String, dynamic>),
    foregroundColorStyle: BackgroundColorStyle.fromJson(
        json['foregroundColorStyle'] as Map<String, dynamic>),
    underline: json['underline'] as bool?,
  );
}

Map<String, dynamic> _$_$_UserEnteredFormatTextFormatToJson(
        _$_UserEnteredFormatTextFormat instance) =>
    <String, dynamic>{
      'foregroundColor': instance.foregroundColor,
      'foregroundColorStyle': instance.foregroundColorStyle,
      'underline': instance.underline,
    };

_$_EffectiveValueClass _$_$_EffectiveValueClassFromJson(
    Map<String, dynamic> json) {
  return _$_EffectiveValueClass(
    stringValue: json['stringValue'] as String?,
  );
}

Map<String, dynamic> _$_$_EffectiveValueClassToJson(
        _$_EffectiveValueClass instance) =>
    <String, dynamic>{
      'stringValue': instance.stringValue,
    };
