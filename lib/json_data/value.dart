import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:itsumuso/json_data/spreadsheet_data.dart';
import 'package:itsumuso/json_data/text_format_run.dart';

import 'enums.dart';

part 'value.freezed.dart';

part 'value.g.dart';

@freezed
class Value with _$Value {
  const factory Value({
    required UserEnteredFormat userEnteredFormat,
    required EffectiveFormat effectiveFormat,
    required EffectiveValueClass userEnteredValue,
    required EffectiveValueClass effectiveValue,
    String? formattedValue,
    @Default(<TextFormatRun>[]) List<TextFormatRun> textFormatRuns,
    String? hyperlink,
  }) = _Value;

  const Value._();

  factory Value.fromJson(Map<String, dynamic> json) => _$ValueFromJson(json);

  HorizontalAlignment get _horizontalAlignment =>
      HorizontalAlignment.parse(effectiveFormat.horizontalAlignment);

  VerticalAlignment get _verticalAlignment =>
      VerticalAlignment.parse(effectiveFormat.verticalAlignment);

  Alignment get alignment =>
      _verticalAlignment.when(
          bottom: () =>
              _horizontalAlignment.when(
                right: () => Alignment.bottomRight,
                middle: () => Alignment.bottomCenter,
                left: () => Alignment.bottomLeft,
              ),
          middle: () =>
              _horizontalAlignment.when(
                right: () => Alignment.centerRight,
                middle: () => Alignment.center,
                left: () => Alignment.bottomCenter,
              ),
          top: () =>
              _horizontalAlignment.when(
                right: () => Alignment.topRight,
                middle: () => Alignment.topCenter,
                left: () => Alignment.topLeft,
              ));
}

@freezed
class UserEnteredFormat with _$UserEnteredFormat {
  const factory UserEnteredFormat({
    String? wrapStrategy,
    @protected
    @JsonKey(
        name: 'verticalAlignment') String? rawVerticalAlignment,
    required UserEnteredFormatTextFormat textFormat,
    required RgbColor backgroundColor,
    required Borders borders,
    @protected
    @JsonKey(
        name: 'horizontalAlignment') String? rawHorizontalAlignment,
    BackgroundColorStyle? backgroundColorStyle,
    @protected
    @JsonKey(name: 'hyperlinkDisplayType') String? rawHyperlinkDisplayType,
  }) = _UserEnteredFormat;

  factory UserEnteredFormat.fromJson(Map<String, dynamic> json) =>
      _$UserEnteredFormatFromJson(json);

  const UserEnteredFormat._();

  VerticalAlignment get verticalAlignment =>
      VerticalAlignment.parse(rawVerticalAlignment);

  HorizontalAlignment get horizontalAlignment =>
      HorizontalAlignment.parse(rawHorizontalAlignment);

  HyperlinkDisplayType get hyperlinkDisplayType =>
      HyperlinkDisplayType.parse(rawHyperlinkDisplayType);
}


@freezed
class HyperlinkDisplayType with _$HyperlinkDisplayType {
  @protected
  const factory HyperlinkDisplayType.plainText() = _HyperlinkDisplayTypePlainText;

  @protected
  const factory HyperlinkDisplayType.linked() = _HyperlinkDisplayTypeLinked;

  @protected
  factory HyperlinkDisplayType.parse(String? string) {
    switch (string) {
      case 'LINKED':
        return const HyperlinkDisplayType.linked();
      case 'PLAIN_TEXT':
      default:
        return const HyperlinkDisplayType.plainText();
    }
  }
}