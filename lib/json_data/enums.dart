import 'package:freezed_annotation/freezed_annotation.dart';

part 'enums.freezed.dart';

@freezed
class VerticalAlignment with _$VerticalAlignment {
  const factory VerticalAlignment.bottom() = _VerticalAlignmentBottom;

  const factory VerticalAlignment.middle() = _VerticalAlignmentMiddle;

  const factory VerticalAlignment.top() = _VerticalAlignmentTop;

  factory VerticalAlignment.parse(String? string) {
    switch (string) {
      case 'BOTTOM':
        return const VerticalAlignment.bottom();
      case 'TOP':
        return const VerticalAlignment.top();
      case 'MIDDLE':
      default:
        return const VerticalAlignment.middle();
    }
  }
}

@freezed
class HorizontalAlignment with _$HorizontalAlignment {
  const factory HorizontalAlignment.right() = _HorizontalAlignmentRight;

  const factory HorizontalAlignment.middle() = _HorizontalAlignmentMiddle;

  const factory HorizontalAlignment.left() = _HorizontalAlignmentLeft;

  factory HorizontalAlignment.parse(String? string) {
    switch (string) {
      case 'RIGHT':
        return const HorizontalAlignment.right();
      case 'LEFT':
        return const HorizontalAlignment.left();
      case 'MIDDLE':
      default:
        return const HorizontalAlignment.middle();
    }
  }
}