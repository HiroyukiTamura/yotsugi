// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text_format_run.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TextFormatRun _$_$_TextFormatRunFromJson(Map<String, dynamic> json) {
  return _$_TextFormatRun(
    format:
        TextFormatRunFormat.fromJson(json['format'] as Map<String, dynamic>),
    startIndex: json['startIndex'] as int?,
  );
}

Map<String, dynamic> _$_$_TextFormatRunToJson(_$_TextFormatRun instance) =>
    <String, dynamic>{
      'format': instance.format,
      'startIndex': instance.startIndex,
    };

_$_TextFormatRunFormat _$_$_TextFormatRunFormatFromJson(
    Map<String, dynamic> json) {
  return _$_TextFormatRunFormat(
    strikethrough: json['strikethrough'] as bool? ?? false,
  );
}

Map<String, dynamic> _$_$_TextFormatRunFormatToJson(
        _$_TextFormatRunFormat instance) =>
    <String, dynamic>{
      'strikethrough': instance.strikethrough,
    };

_$_EffectiveFormatTextFormat _$_$_EffectiveFormatTextFormatFromJson(
    Map<String, dynamic> json) {
  return _$_EffectiveFormatTextFormat(
    foregroundColor:
        RgbColor.fromJson(json['foregroundColor'] as Map<String, dynamic>),
    fontSize: json['fontSize'] as int?,
    bold: json['bold'] as bool? ?? false,
    italic: json['italic'] as bool? ?? false,
    strikethrough: json['strikethrough'] as bool? ?? false,
    underline: json['underline'] as bool? ?? false,
    foregroundColorStyle: BackgroundColorStyle.fromJson(
        json['foregroundColorStyle'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_EffectiveFormatTextFormatToJson(
        _$_EffectiveFormatTextFormat instance) =>
    <String, dynamic>{
      'foregroundColor': instance.foregroundColor,
      'fontSize': instance.fontSize,
      'bold': instance.bold,
      'italic': instance.italic,
      'strikethrough': instance.strikethrough,
      'underline': instance.underline,
      'foregroundColorStyle': instance.foregroundColorStyle,
    };
