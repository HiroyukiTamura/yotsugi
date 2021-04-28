import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:itsumuso/json_data/spreadsheet_data.dart';

part 'single_border.freezed.dart';

part 'single_border.g.dart';

@freezed
class SingleBorder with _$SingleBorder {
  const factory SingleBorder({
    @required @JsonKey(name: 'style') String? rawStyle,
    int? width,
    required RgbColor color,
    required BackgroundColorStyle colorStyle,
  }) = _SingleBorder;

  factory SingleBorder.fromJson(Map<String, dynamic> json) =>
      _$SingleBorderFromJson(json);

  const SingleBorder._();

  Style? get style => rawStyle == null ? null : Style.parse(rawStyle!);
}

@freezed
class Style with _$Style {
  @protected
  const factory Style.solid() = _StyleSolid;

  @protected
  const factory Style.solidThick() = _StyleSolidThick;

  @protected
  const factory Style.dashed() = _StyleDashed;

  @protected
  factory Style.parse(String string) {
    switch (string) {
      case 'SOLID':
        return const Style.solid();
      case 'SOLID_THICK':
        return const Style.solidThick();
      case 'DASHED':
        return const Style.dashed();
      default:
        throw ArgumentError.value(string);
    }
  }
}