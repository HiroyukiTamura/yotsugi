import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:itsumuso/json_data/spreadsheet_data.dart';

part 'text_format_run.freezed.dart';

part 'text_format_run.g.dart';

@freezed
class TextFormatRun with _$TextFormatRun {
  const factory TextFormatRun({
    required TextFormatRunFormat format,
    int? startIndex,
  }) = _TextFormatRun;

  factory TextFormatRun.fromJson(Map<String, dynamic> json) =>
      _$TextFormatRunFromJson(json);
}

@freezed
class TextFormatRunFormat with _$TextFormatRunFormat {
  const factory TextFormatRunFormat({
    @Default(false) bool strikethrough,
  }) = _TextFormatRunFormat;

  factory TextFormatRunFormat.fromJson(Map<String, dynamic> json) =>
      _$TextFormatRunFormatFromJson(json);
}

@freezed
class EffectiveFormatTextFormat with _$EffectiveFormatTextFormat {
  const factory EffectiveFormatTextFormat({
    required RgbColor foregroundColor,
    //  FontFamily fontFamily,
    int? fontSize,
    @Default(false) bool bold,
    @Default(false) bool italic,
    @Default(false) bool strikethrough,
    @Default(false) bool underline,
    required BackgroundColorStyle foregroundColorStyle,
  }) = _EffectiveFormatTextFormat;

  factory EffectiveFormatTextFormat.fromJson(Map<String, dynamic> json) =>
      _$EffectiveFormatTextFormatFromJson(json);
}
