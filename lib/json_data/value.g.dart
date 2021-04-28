// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Value _$_$_ValueFromJson(Map<String, dynamic> json) {
  return _$_Value(
    userEnteredFormat: UserEnteredFormat.fromJson(
        json['userEnteredFormat'] as Map<String, dynamic>),
    effectiveFormat: EffectiveFormat.fromJson(
        json['effectiveFormat'] as Map<String, dynamic>),
    userEnteredValue: EffectiveValueClass.fromJson(
        json['userEnteredValue'] as Map<String, dynamic>),
    effectiveValue: EffectiveValueClass.fromJson(
        json['effectiveValue'] as Map<String, dynamic>),
    formattedValue: json['formattedValue'] as String?,
    textFormatRuns: (json['textFormatRuns'] as List<dynamic>?)
            ?.map((e) => TextFormatRun.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    hyperlink: json['hyperlink'] as String?,
  );
}

Map<String, dynamic> _$_$_ValueToJson(_$_Value instance) => <String, dynamic>{
      'userEnteredFormat': instance.userEnteredFormat,
      'effectiveFormat': instance.effectiveFormat,
      'userEnteredValue': instance.userEnteredValue,
      'effectiveValue': instance.effectiveValue,
      'formattedValue': instance.formattedValue,
      'textFormatRuns': instance.textFormatRuns,
      'hyperlink': instance.hyperlink,
    };

_$_UserEnteredFormat _$_$_UserEnteredFormatFromJson(Map<String, dynamic> json) {
  return _$_UserEnteredFormat(
    wrapStrategy: json['wrapStrategy'] as String?,
    rawVerticalAlignment: json['verticalAlignment'] as String?,
    textFormat: UserEnteredFormatTextFormat.fromJson(
        json['textFormat'] as Map<String, dynamic>),
    backgroundColor:
        RgbColor.fromJson(json['backgroundColor'] as Map<String, dynamic>),
    borders: Borders.fromJson(json['borders'] as Map<String, dynamic>),
    rawHorizontalAlignment: json['horizontalAlignment'] as String?,
    backgroundColorStyle: json['backgroundColorStyle'] == null
        ? null
        : BackgroundColorStyle.fromJson(
            json['backgroundColorStyle'] as Map<String, dynamic>),
    rawHyperlinkDisplayType: json['hyperlinkDisplayType'] as String?,
  );
}

Map<String, dynamic> _$_$_UserEnteredFormatToJson(
        _$_UserEnteredFormat instance) =>
    <String, dynamic>{
      'wrapStrategy': instance.wrapStrategy,
      'verticalAlignment': instance.rawVerticalAlignment,
      'textFormat': instance.textFormat,
      'backgroundColor': instance.backgroundColor,
      'borders': instance.borders,
      'horizontalAlignment': instance.rawHorizontalAlignment,
      'backgroundColorStyle': instance.backgroundColorStyle,
      'hyperlinkDisplayType': instance.rawHyperlinkDisplayType,
    };
