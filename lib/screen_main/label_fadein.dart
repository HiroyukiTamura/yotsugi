import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yotsugi/styles.dart';

class LabelFadeIn extends StatelessWidget {
  const LabelFadeIn({
    Key key,
    @required this.string,
    @required this.animationController,
    @required this.alignment,
  }) : super(key: key);

  final String string;
  final AnimationController animationController;
  final Alignment alignment;

  @override
  Widget build(BuildContext context) => Align(
        alignment: alignment,
        child: FadeTransition(
          opacity: Tween<double>(
            begin: 0,
            end: 1,
          ).animate(CurvedAnimation(
            parent: animationController,
            curve: const Interval(.6, 1, curve: Curves.easeInOutSine),
          )),
          child: Text(
            string,
            style: TextStyle(
              fontFamily: Styles.FONT_SHINGO,
              color: Colors.black87,
              fontSize: 12,
            ),
          ),
        ),
      );
}
