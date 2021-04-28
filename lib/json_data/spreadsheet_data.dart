import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:meta/meta.dart';

// todo freezed
class SpreadSheetData {
  SpreadSheetData({
    required this.spreadsheetId,
    // @required this.properties,
    required this.sheets,
    required this.spreadsheetUrl,
  });

  factory SpreadSheetData.fromJson(String str) {
    final map = json.decode(str) as Map<String, dynamic>;
    return SpreadSheetData(
      spreadsheetId: map['spreadsheetId'] as String?,
      // properties: SpreadSheetDataProps._fromJson(json['properties'] as Map<String, dynamic>),
      sheets: ((map['sheets'] as List<dynamic>?)
              ?.map((dynamic x) => Sheet._fromJson(x as Map<String, dynamic>)))
          ?.toList(growable: false),
      spreadsheetUrl: map['spreadsheetUrl'] as String?,
    );
  }

  final String? spreadsheetId;

  // final SpreadSheetDataProps properties;
  final List<Sheet>? sheets;
  final String? spreadsheetUrl;
}

class SpreadSheetDataProps {
  SpreadSheetDataProps({
    required this.title,
    // @required this.locale,
    // @required this.autoRecalc,
    // @required this.timeZone,
    // @required this.defaultFormat,
    required this.spreadsheetTheme,
  });

  factory SpreadSheetDataProps._fromJson(Map<String, dynamic> json) =>
      SpreadSheetDataProps(
        title: json['title'] as String?,
        // locale: json['locale'],
        // autoRecalc: json['autoRecalc'],
        // timeZone: json['timeZone'],
        // defaultFormat: DefaultFormat._fromJson(json['defaultFormat']),
        spreadsheetTheme: SpreadsheetTheme._fromJson(
            json['spreadsheetTheme'] as Map<String, dynamic>),
      );

  final String? title;

  // final String locale;
  // final String autoRecalc;
  // final String timeZone;
  // final DefaultFormat defaultFormat;
  final SpreadsheetTheme spreadsheetTheme;
}

class DefaultFormat {
  DefaultFormat({
    required this.backgroundColor,
    required this.padding,
    required this.verticalAlignment,
    required this.wrapStrategy,
    required this.textFormat,
    required this.backgroundColorStyle,
  });

  factory DefaultFormat._fromJson(Map<String, dynamic> json) => DefaultFormat(
        backgroundColor:
            RgbColor._fromJson(json['backgroundColor'] as Map<String, dynamic>?),
        padding: PaddingMetrics._fromJson(json['padding'] as Map<String, dynamic>?),
        verticalAlignment:
            verticalAlignmentValues.map[json['verticalAlignment']],
        wrapStrategy: wrapStrategyValues.map[json['wrapStrategy']],
        textFormat: DefaultFormatTextFormat._fromJson(
            json['textFormat'] as Map<String, dynamic>),
        backgroundColorStyle: BackgroundColorStyle._fromJson(
            json['backgroundColorStyle'] as Map<String, dynamic>?),
      );

  final RgbColor backgroundColor;
  final PaddingMetrics padding;
  final VerticalAlignment? verticalAlignment;
  final WrapStrategy? wrapStrategy;
  final DefaultFormatTextFormat textFormat;
  final BackgroundColorStyle backgroundColorStyle;
}

class RgbColor {
  RgbColor({
    required this.red,
    required this.green,
    required this.blue,
    required this.alpha,
  });

  factory RgbColor._fromJson(Map<String, dynamic>? json) => json == null
      ? null
      : RgbColor(
          red: _parseAsDouble(json['red']),
          green: _parseAsDouble(json['green']),
          blue: _parseAsDouble(json['blue']),
          alpha: _parseAsDouble(json['alpha']),
        );

  final double? red;
  final double? green;
  final double? blue;
  final double? alpha;
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

class BackgroundColorStyle {
  BackgroundColorStyle({
    required this.rgbColor,
  });

  factory BackgroundColorStyle._fromJson(Map<String, dynamic>? json) =>
      json == null
          ? null
          : BackgroundColorStyle(
              rgbColor:
                  RgbColor._fromJson(json['rgbColor'] as Map<String, dynamic>?),
            );

  final RgbColor rgbColor;
}

class PaddingMetrics {
  PaddingMetrics._({
    required this.top,
    required this.right,
    required this.bottom,
    required this.left,
  });

  factory PaddingMetrics._fromJson(Map<String, dynamic>? json) => json == null
      ? null
      : PaddingMetrics._(
          top: json['top'] as int?,
          right: json['right'] as int?,
          bottom: json['bottom'] as int?,
          left: json['left'] as int?,
        );

  final int? top;
  final int? right;
  final int? bottom;
  final int? left;
}

class DefaultFormatTextFormat {
  DefaultFormatTextFormat({
    // @required this.foregroundColor,
    required this.fontSize,
    required this.bold,
    required this.italic,
    required this.strikethrough,
    required this.underline,
    // @required this.foregroundColorStyle,
  });

  factory DefaultFormatTextFormat._fromJson(Map<String, dynamic> json) =>
      DefaultFormatTextFormat(
        // foregroundColor: PurpleColor._fromJson(json['foregroundColor'] as Map<String, dynamic>),
        // fontFamily: json['fontFamily'],
        fontSize: json['fontSize'] as int?,
        bold: json['bold'] as bool?,
        italic: json['italic'] as bool?,
        strikethrough: json['strikethrough'] as bool?,
        underline: json['underline'] as bool?,
        // foregroundColorStyle: ForegroundColorStyle._fromJson(json['foregroundColorStyle'] as Map<String, dynamic>),
      );

  // final PurpleColor foregroundColor;
  // final String fontFamily;
  final int? fontSize;
  final bool? bold;
  final bool? italic;
  final bool? strikethrough;
  final bool? underline;
// final ForegroundColorStyle foregroundColorStyle;
}

// class PurpleColor {
//   PurpleColor();
//
//   factory PurpleColor._fromJson() => PurpleColor();
// }

// class ForegroundColorStyle {
//   ForegroundColorStyle({
//     @required this.rgbColor,
//   });
//
//   factory ForegroundColorStyle._fromJson(Map<String, dynamic> json) => ForegroundColorStyle(
//     rgbColor: PurpleColor._fromJson(json['rgbColor'] as Map<String, dynamic>),
//   );
//
//   final PurpleColor rgbColor;
// }

enum VerticalAlignment { BOTTOM, MIDDLE, TOP }

final verticalAlignmentValues = EnumValues({
  'BOTTOM': VerticalAlignment.BOTTOM,
  'MIDDLE': VerticalAlignment.MIDDLE,
  'TOP': VerticalAlignment.TOP,
});

enum WrapStrategy { WRAP, OVERFLOW_CELL }

final wrapStrategyValues = EnumValues({
  'OVERFLOW_CELL': WrapStrategy.OVERFLOW_CELL,
  'WRAP': WrapStrategy.WRAP,
});

class SpreadsheetTheme {
  SpreadsheetTheme({
    // @required this.primaryFontFamily,
    required this.themeColors,
  });

  factory SpreadsheetTheme._fromJson(Map<String, dynamic> json) =>
      SpreadsheetTheme(
        // primaryFontFamily: fontFamilyValues.map[json['primaryFontFamily']],
        themeColors: ((json['themeColors'] as List<dynamic>?)?.map(
                (dynamic x) => ThemeColor._fromJson(x as Map<String, dynamic>)))
            ?.toList(growable: false),
      );

  // final FontFamily primaryFontFamily;
  final List<ThemeColor>? themeColors;
}

// enum FontFamily { ARIAL }
//
// final fontFamilyValues = EnumValues({
//   'Arial': FontFamily.ARIAL
// });

class ThemeColor {
  ThemeColor({
    required this.colorType,
    required this.color,
  });

  factory ThemeColor._fromJson(Map<String, dynamic> json) => ThemeColor(
        colorType: json['colorType'] as String?,
        color: BackgroundColorStyle._fromJson(
            json['color'] as Map<String, dynamic>?),
      );

  final String? colorType;
  final BackgroundColorStyle color;
}

class Sheet {
  Sheet({
    required this.properties,
    required this.data,
    // @required this.conditionalFormats,
  });

  factory Sheet._fromJson(Map<String, dynamic> json) => Sheet(
        properties: SheetProperties._fromJson(
            json['properties'] as Map<String, dynamic>?),
        data: ((json['data'] as List<dynamic>?)?.map(
                (dynamic x) => Datum._fromJson(x as Map<String, dynamic>)))
            ?.toList(growable: false),
        // conditionalFormats: (json['conditionalFormats'] as List<dynamic>)
        //     .map<ConditionalFormat>((dynamic x) =>
        //         ConditionalFormat._fromJson(x as Map<String, dynamic>))
        //     .toList(growable: false),
      );

  final SheetProperties properties;
  final List<Datum>? data;

  int get lastColumn => data!.first._lastColumn;

  int get lastRow => data!.first._lastRow;

  Xy getXy(int index) => data!.first._getXy(index);

  List<List<Value?>> getDataWithNullItem() => data!.first._getDataWithNullItem();

  void collapseEmptyRowAndColumn(List<List<Value?>> map) => data!.first._collapseEmptyRowAndColumn(map);
// final List<ConditionalFormat> conditionalFormats;
}

// class ConditionalFormat {
//   ConditionalFormat({
//     @required this.ranges,
//     // @required this.booleanRule,
//   });
//
//   factory ConditionalFormat._fromJson(Map<String, dynamic> json) =>
//       ConditionalFormat(
//         ranges: ((json['ranges'] as List<dynamic>)
//             ?.map<Range>((dynamic x) => Range._fromJson(x as Map<String, dynamic>)))
//             ?.toList(growable: false),
//         // booleanRule:
//         //     BooleanRule._fromJson(json['booleanRule'] as Map<String, dynamic>),
//       );
//
//   final List<Range> ranges;
//   // final BooleanRule booleanRule;
// }

// class BooleanRule {
//   BooleanRule({
//     // @required this.condition,
//     @required this.format,
//   });
//
//   factory BooleanRule._fromJson(Map<String, dynamic> json) => json == null ? null : BooleanRule(
//         // condition:
//         //     Condition._fromJson(json['condition'] as Map<String, dynamic>),
//         format:
//             BooleanRuleFormat._fromJson(json['format'] as Map<String, dynamic>),
//       );
//
//   // final Condition condition;
//   final BooleanRuleFormat format;
// }

// class Condition {
//   Condition({
//     @required this.type,
//   });
//
//   factory Condition._fromJson(Map<String, dynamic> json) => Condition(
//         type: json['type'] as String,
//       );
//
//   final String type;
// }

class BooleanRuleFormat {
  BooleanRuleFormat({
    required this.backgroundColor,
    required this.backgroundColorStyle,
  });

  factory BooleanRuleFormat._fromJson(Map<String, dynamic> json) =>
      BooleanRuleFormat(
        backgroundColor:
            RgbColor._fromJson(json['backgroundColor'] as Map<String, dynamic>?),
        backgroundColorStyle: BackgroundColorStyle._fromJson(
            json['backgroundColorStyle'] as Map<String, dynamic>?),
      );

  final RgbColor backgroundColor;
  final BackgroundColorStyle backgroundColorStyle;
}

// class Range {
//   Range({
//     @required this.startRowIndex,
//     @required this.endRowIndex,
//     @required this.startColumnIndex,
//     @required this.endColumnIndex,
//   });
//
//   factory Range._fromJson(Map<String, dynamic> json) => Range(
//         startRowIndex: json['startRowIndex'] as int,
//         endRowIndex: json['endRowIndex'] as int,
//         startColumnIndex: json['startColumnIndex'] as int,
//         endColumnIndex: json['endColumnIndex'] as int,
//       );
//
//   final int startRowIndex;
//   final int endRowIndex;
//   final int startColumnIndex;
//   final int endColumnIndex;
// }

class Datum {
  Datum({
    required this.rowData,
    required this.rowMetadata,
    required this.columnMetadata,
  })  : _lastColumn = _getLastColumn(rowData),
        _lastRow = rowData.length;

  factory Datum._fromJson(Map<String, dynamic> json) => Datum(
        (rowData: (json['rowData'] as List<dynamic>?)
            ?.map<RowDatum>(
                (dynamic x) => RowDatum._fromJson(x as Map<String, dynamic>))
            ?.toList(growable: false))!,
        rowMetadata: (json['rowMetadata'] as List<dynamic>?)
            ?.map<PixelSizeWrapper>((dynamic x) =>
                PixelSizeWrapper._fromJson(x as Map<String, dynamic>))
            ?.toList(growable: false),
        columnMetadata: (json['columnMetadata'] as List<dynamic>?)
            ?.map<PixelSizeWrapper>((dynamic x) =>
                PixelSizeWrapper._fromJson(x as Map<String, dynamic>))
            ?.toList(growable: false),
      );

  final List<RowDatum> rowData;
  final List<PixelSizeWrapper>? rowMetadata;
  final List<PixelSizeWrapper>? columnMetadata;
  final int _lastColumn;
  final int _lastRow;

  static int _getLastColumn(List<RowDatum> rowData) {
    int mostLongRowLen = 0;

    rowData.asMap().forEach((i, value) {
      int len = value.values!.length;
      if (len > mostLongRowLen) mostLongRowLen = len;
    });

    return mostLongRowLen;
  }

  Xy _getXy(int index) {
    int total = 0;
    for (var i = 0; i < rowData.length; i++) {
      total += rowData[i].values!.length;
      if (total >= index) return Xy(x: total - index, y: i);
    }
    throw Exception('oops!');
  }

  List<List<Value?>> _getDataWithNullItem() {
    List<List<Value?>> map = [];
    rowData.asMap().forEach((rowCount, row) {
      map.add([...row.values!]);
      int trailEmptyCells = _lastColumn - row.values!.length;
      for (int i = 0; i < trailEmptyCells; i++) map[rowCount].add(null);
    });
    return map;
  }

  void _collapseEmptyRowAndColumn(List<List<Value?>> map) {
    map.asMap().forEach((rowIndex, element) {
      final isEmptyRow = element.where((rowItem) => rowItem?.effectiveValue?.stringValue?.isNotEmpty == true).isEmpty;
      if (isEmptyRow)
        rowMetadata![rowIndex].pixelSize = 8;
    });
    final isColumnNotEmpty = List<bool>.filled(columnMetadata!.length, false);
    map.asMap().forEach((rowIndex, row) {
      row.asMap().forEach((columnIndex, cell) {
        if (cell?.effectiveValue?.stringValue?.isNotEmpty == true)
          isColumnNotEmpty[columnIndex] = true;
      });
    });
    isColumnNotEmpty.asMap()
        .forEach((columnIndex, isNotEmpty) {
          if (!isNotEmpty)
            columnMetadata![columnIndex].pixelSize = 8;
    });
  }
}

class Xy {
  Xy({
    required this.x,
    required this.y,
  });

  final int x;
  final int y;
}

class PixelSizeWrapper {
  PixelSizeWrapper({
    required this.pixelSize,
  });

  factory PixelSizeWrapper._fromJson(Map<String, dynamic> json) =>
      PixelSizeWrapper(
        pixelSize: json['pixelSize'] as int?,
      );

  int? pixelSize;
}

class RowDatum {
  RowDatum({
    required this.values,
  });

  factory RowDatum._fromJson(Map<String, dynamic> json) => RowDatum(
        values: (json['values'] as List<dynamic>?)
            ?.map<Value>(
                (dynamic x) => Value._fromJson(x as Map<String, dynamic>))
            ?.toList(growable: false),
      );

  final List<Value?>? values;
}

class Value {
  Value({
    required this.userEnteredFormat,
    required this.effectiveFormat,
    required this.userEnteredValue,
    required this.effectiveValue,
    required this.formattedValue,
    required this.textFormatRuns,
    required this.hyperlink,
  });

  factory Value._fromJson(Map<String, dynamic> json) => json == null ? null : Value(
        userEnteredFormat: UserEnteredFormat._fromJson(
            json['userEnteredFormat'] as Map<String, dynamic>?),
        effectiveFormat: EffectiveFormat._fromJson(
            json['effectiveFormat'] as Map<String, dynamic>?),
        userEnteredValue: EffectiveValueClass._fromJson(
            json['userEnteredValue'] as Map<String, dynamic>?),
        effectiveValue: EffectiveValueClass._fromJson(
            json['effectiveValue'] as Map<String, dynamic>?),
        formattedValue: json['formattedValue'] as String?,
        textFormatRuns: ((json['textFormatRuns'] as List<dynamic>?)
                ?.map<TextFormatRun>((dynamic x) =>
                    TextFormatRun._fromJson(x as Map<String, dynamic>)))
            ?.toList(growable: false),
        hyperlink: json['hyperlink'] as String?,
      );

  final UserEnteredFormat userEnteredFormat;
  final EffectiveFormat effectiveFormat;
  final EffectiveValueClass userEnteredValue;
  final EffectiveValueClass effectiveValue;
  final String? formattedValue;
  final List<TextFormatRun>? textFormatRuns;
  final String? hyperlink;

  Alignment get alignment {
    final verticalAlignment = effectiveFormat.verticalAlignment;
    final horizontalAlignment = effectiveFormat.horizontalAlignment;

    if (verticalAlignment == VerticalAlignment.TOP) {
      if (horizontalAlignment == HorizontalAlignment.RIGHT)
        return Alignment.topLeft;
      else if (horizontalAlignment == HorizontalAlignment.MIDDLE || horizontalAlignment == null)
        return Alignment.centerLeft;
      else if (horizontalAlignment == HorizontalAlignment.LEFT)
        return Alignment.bottomLeft;

    } else if (verticalAlignment == VerticalAlignment.MIDDLE || verticalAlignment == null) {
      if (horizontalAlignment == HorizontalAlignment.RIGHT)
        return Alignment.centerRight;
      else if (horizontalAlignment == HorizontalAlignment.MIDDLE || horizontalAlignment == null)
        return Alignment.center;
      else if (horizontalAlignment == HorizontalAlignment.LEFT)
        return Alignment.centerLeft;

    } else if (verticalAlignment == VerticalAlignment.BOTTOM) {
      if (horizontalAlignment == HorizontalAlignment.RIGHT)
        return Alignment.bottomRight;
      else if (horizontalAlignment == HorizontalAlignment.MIDDLE || horizontalAlignment == null)
        return Alignment.bottomCenter;
      else if (horizontalAlignment == HorizontalAlignment.LEFT)
        return Alignment.bottomLeft;
    }

    throw Exception();
  }
}

class EffectiveFormat {
  EffectiveFormat({
    required this.backgroundColor,
    required this.padding,
    required this.verticalAlignment,
    required this.wrapStrategy,
    required this.textFormat,
    required this.backgroundColorStyle,
    required this.borders,
    required this.horizontalAlignment,
    required this.hyperlinkDisplayType,
  });

  factory EffectiveFormat._fromJson(Map<String, dynamic>? json) => json == null
      ? null
      : EffectiveFormat(
          backgroundColor: RgbColor._fromJson(
              json['backgroundColor'] as Map<String, dynamic>?),
          padding: PaddingMetrics._fromJson(json['padding'] as Map<String, dynamic>?),
          verticalAlignment:
              verticalAlignmentValues.map[json['verticalAlignment']],
          wrapStrategy: wrapStrategyValues.map[json['wrapStrategy']],
          textFormat: EffectiveFormatTextFormat._fromJson(
              json['textFormat'] as Map<String, dynamic>),
          backgroundColorStyle: BackgroundColorStyle._fromJson(
              json['backgroundColorStyle'] as Map<String, dynamic>?),
          borders: Borders._fromJson(json['borders'] as Map<String, dynamic>?),
          horizontalAlignment: json['horizontalAlignment'] == null
              ? null
              : horizontalAlignmentValues.map[json['horizontalAlignment']],
          hyperlinkDisplayType: json['hyperlinkDisplayType'] == null
              ? null
              : hyperlinkDisplayTypeValues.map[json['hyperlinkDisplayType']],
        );

  final RgbColor backgroundColor;
  final PaddingMetrics padding;
  final VerticalAlignment? verticalAlignment;
  final WrapStrategy? wrapStrategy;
  final EffectiveFormatTextFormat textFormat;
  final BackgroundColorStyle backgroundColorStyle;
  final Borders borders;
  final HorizontalAlignment? horizontalAlignment;
  final HyperlinkDisplayType? hyperlinkDisplayType;
}

class Borders {
  Borders({
    required this.bottom,
    required this.left,
    required this.right,
    required this.top,
  });

  factory Borders._fromJson(Map<String, dynamic>? json) => json == null
      ? null
      : Borders(
          bottom: SingleBorder._fromJson(json['bottom'] as Map<String, dynamic>?),
          left: SingleBorder._fromJson(json['left'] as Map<String, dynamic>?),
          right: SingleBorder._fromJson(json['right'] as Map<String, dynamic>?),
          top: SingleBorder._fromJson(json['top'] as Map<String, dynamic>?),
        );

  final SingleBorder bottom;
  final SingleBorder left;
  final SingleBorder right;
  final SingleBorder top;
}

class SingleBorder {
  SingleBorder({
    required this.style,
    required this.width,
    required this.color,
    required this.colorStyle,
  });

  factory SingleBorder._fromJson(Map<String, dynamic>? json) {
    return json == null
        ? null
        : SingleBorder(
            style: styleValues.map[json['style']],
            width: json['width'] as int?,
            color: RgbColor._fromJson(json['color'] as Map<String, dynamic>?),
            colorStyle: BackgroundColorStyle._fromJson(
                json['colorStyle'] as Map<String, dynamic>?),
          );
  }

  final Style? style;
  final int? width;
  final RgbColor color;
  final BackgroundColorStyle colorStyle;
}

enum Style { SOLID, SOLID_THICK, DASHED }

final styleValues = EnumValues({
  'DASHED': Style.DASHED,
  'SOLID': Style.SOLID,
  'SOLID_THICK': Style.SOLID_THICK
});

enum HorizontalAlignment { LEFT, MIDDLE, RIGHT }

final horizontalAlignmentValues =
    EnumValues({
      'LEFT': HorizontalAlignment.LEFT,
      'MIDDLE': HorizontalAlignment.MIDDLE,
      'RIGHT': HorizontalAlignment.RIGHT,
    });

enum HyperlinkDisplayType { PLAIN_TEXT, LINKED }

final hyperlinkDisplayTypeValues = EnumValues({
  'LINKED': HyperlinkDisplayType.LINKED,
  'PLAIN_TEXT': HyperlinkDisplayType.PLAIN_TEXT
});

class EffectiveFormatTextFormat {
  EffectiveFormatTextFormat({
    required this.foregroundColor,
    // @required this.fontFamily,
    required this.fontSize,
    required this.bold,
    required this.italic,
    required this.strikethrough,
    required this.underline,
    required this.foregroundColorStyle,
  });

  factory EffectiveFormatTextFormat._fromJson(Map<String, dynamic> json) =>
      EffectiveFormatTextFormat(
        foregroundColor:
            RgbColor._fromJson(json['foregroundColor'] as Map<String, dynamic>?),
        // fontFamily: fontFamilyValues.map[json['fontFamily']],
        fontSize: json['fontSize'] as int?,
        bold: json['bold'] as bool?,
        italic: json['italic'] as bool?,
        strikethrough: json['strikethrough'] as bool?,
        underline: json['underline'] as bool?,
        foregroundColorStyle: BackgroundColorStyle._fromJson(
            json['foregroundColorStyle'] as Map<String, dynamic>?),
      );

  final RgbColor foregroundColor;

  // final FontFamily fontFamily;
  final int? fontSize;
  final bool? bold;
  final bool? italic;
  final bool? strikethrough;
  final bool? underline;
  final BackgroundColorStyle foregroundColorStyle;
}

class EffectiveValueClass {
  EffectiveValueClass({
    required this.stringValue,
  });

  factory EffectiveValueClass._fromJson(Map<String, dynamic>? json) =>
      json == null
          ? null
          : EffectiveValueClass(
              stringValue: json['stringValue'] as String?,
            );

  final String? stringValue;
}

class TextFormatRun {
  TextFormatRun({
    required this.format,
    required this.startIndex,
  });

  factory TextFormatRun._fromJson(Map<String, dynamic> json) => TextFormatRun(
        format: TextFormatRunFormat._fromJson(
            json['format'] as Map<String, dynamic>),
        startIndex: json['startIndex'] as int?,
      );

  final TextFormatRunFormat format;
  final int? startIndex;
}

class TextFormatRunFormat {
  TextFormatRunFormat({
    required this.strikethrough,
  });

  factory TextFormatRunFormat._fromJson(Map<String, dynamic> json) =>
      TextFormatRunFormat(
        strikethrough: json['strikethrough'] as bool?,
      );

  final bool? strikethrough;
}

class UserEnteredFormat {
  UserEnteredFormat({
    required this.wrapStrategy,
    required this.verticalAlignment,
    required this.textFormat,
    required this.backgroundColor,
    required this.borders,
    required this.horizontalAlignment,
    required this.backgroundColorStyle,
    required this.hyperlinkDisplayType,
  });

  factory UserEnteredFormat._fromJson(Map<String, dynamic>? json) => json == null
      ? null
      : UserEnteredFormat(
          wrapStrategy: json['wrapStrategy'] == null
              ? null
              : wrapStrategyValues.map[json['wrapStrategy']],
          verticalAlignment: json['verticalAlignment'] == null
              ? null
              : verticalAlignmentValues.map[json['verticalAlignment']],
          textFormat: UserEnteredFormatTextFormat._fromJson(
              json['textFormat'] as Map<String, dynamic>?),
          backgroundColor: RgbColor._fromJson(
              json['backgroundColor'] as Map<String, dynamic>?),
          borders: Borders._fromJson(json['borders'] as Map<String, dynamic>?),
          horizontalAlignment: json['horizontalAlignment'] == null
              ? null
              : horizontalAlignmentValues.map[json['horizontalAlignment']],
          backgroundColorStyle: json['backgroundColorStyle'] == null
              ? null
              : BackgroundColorStyle._fromJson(
                  json['backgroundColorStyle'] as Map<String, dynamic>?),
          hyperlinkDisplayType: json['hyperlinkDisplayType'] == null
              ? null
              : hyperlinkDisplayTypeValues.map[json['hyperlinkDisplayType']],
        );

  final WrapStrategy? wrapStrategy;
  final VerticalAlignment? verticalAlignment;
  final UserEnteredFormatTextFormat textFormat;
  final RgbColor backgroundColor;
  final Borders borders;
  final HorizontalAlignment? horizontalAlignment;
  final BackgroundColorStyle? backgroundColorStyle;
  final HyperlinkDisplayType? hyperlinkDisplayType;
}

class UserEnteredFormatTextFormat {
  UserEnteredFormatTextFormat({
    // @required this.fontFamily,
    required this.foregroundColor,
    required this.foregroundColorStyle,
    required this.underline,
  });

  factory UserEnteredFormatTextFormat._fromJson(Map<String, dynamic>? json) =>
      json == null
          ? null
          : UserEnteredFormatTextFormat(
              // fontFamily: fontFamilyValues.map[json['fontFamily']],
              foregroundColor: RgbColor._fromJson(
                  json['foregroundColor'] as Map<String, dynamic>?),
              foregroundColorStyle: BackgroundColorStyle._fromJson(
                  json['foregroundColorStyle'] as Map<String, dynamic>?),
              underline: json['underline'] as bool?,
            );

  // final FontFamily fontFamily;
  final RgbColor foregroundColor;
  final BackgroundColorStyle foregroundColorStyle;
  final bool? underline;
}

class SheetProperties {
  SheetProperties({
    // @required this.sheetId,
    // @required this.title,
    // @required this.index,
    // @required this.sheetType,
    required this.gridProperties,
  });

  factory SheetProperties._fromJson(Map<String, dynamic>? json) => json == null
      ? null
      : SheetProperties(
          // sheetId: json['sheetId'] as int,
          // title: json['title'] as String,
          // index: json['index'] as int,
          // sheetType: json['sheetType'] as String,
          gridProperties: GridProperties._fromJson(
              json['gridProperties'] as Map<String, dynamic>?),
        );

  // final int sheetId;
  // final String title;
  // final int index;
  // final String sheetType;
  final GridProperties gridProperties;
}

class GridProperties {
  GridProperties({
    required this.rowCount,
    required this.columnCount,
  }) : cellCount = rowCount * columnCount;

  factory GridProperties._fromJson(Map<String, dynamic>? json) => json == null
      ? null
      : GridProperties(
          rowCount: json['rowCount'] as int,
          columnCount: json['columnCount'] as int,
        );

  final int rowCount;
  final int columnCount;
  final int cellCount;
}

class EnumValues<T> {
  EnumValues(this.map);

  Map<String, T> map;
  Map<T, String>? reverseMap;

  Map<T, String>? get reverse {
    reverseMap ??= map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
