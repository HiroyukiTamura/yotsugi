import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:itsumuso/styles.dart';

class CornerLabel extends StatelessWidget {
  const CornerLabel({
    Key key,
    @required this.alignment,
    @required this.curve,
    @required this.duration,
    @required this.tween,
    @required this.string,
    this.onTap,
    this.fontSize = 12,
  }) : super(key: key);

  final Curve curve;
  final Tween<Offset> tween;
  final String string;
  final Duration duration;
  final Alignment alignment;
  final GestureTapCallback onTap;
  final double fontSize;

  @override
  Widget build(BuildContext context) => Align(
        alignment: alignment,
        child: TweenAnimationBuilder<Offset>(
          tween: tween,
          builder: (_, offset, child) =>
              FractionalTranslation(translation: offset, child: child),
          duration: duration,
          curve: curve,
          child: onTap == null ? _text() : InkWell(
            onTap: onTap,
            child: _text(),
          ),
        ),
      );

  Widget _text() => Padding(
    padding: const EdgeInsets.all(16),
    child: Text(
        string,
        style: TextStyle(
          fontFamily: Styles.FONT_SHINGO,
          color: Colors.black87,
          fontSize: fontSize,
        ),
      ),
  );
}
