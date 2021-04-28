// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_border.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SingleBorder _$_$_SingleBorderFromJson(Map<String, dynamic> json) {
  return _$_SingleBorder(
    rawStyle: json['style'] as String?,
    width: json['width'] as int?,
    color: RgbColor.fromJson(json['color'] as Map<String, dynamic>),
    colorStyle: BackgroundColorStyle.fromJson(
        json['colorStyle'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_SingleBorderToJson(_$_SingleBorder instance) =>
    <String, dynamic>{
      'style': instance.rawStyle,
      'width': instance.width,
      'color': instance.color,
      'colorStyle': instance.colorStyle,
    };
